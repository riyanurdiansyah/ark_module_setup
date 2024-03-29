import 'dart:convert';
import 'dart:developer';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/src/data/datasource/remote/ark_main_remote_datasource_impl.dart';
import 'package:ark_module_setup/src/data/dto/remote_config_dto.dart';
import 'package:ark_module_setup/src/data/repositories/ark_main_repository_impl.dart';
import 'package:ark_module_setup/src/domain/entities/remote_config_entity.dart';
import 'package:ark_module_setup/src/domain/usecases/ark_main_usecase.dart';
import 'package:ark_module_setup/utils/services/dynamic_links.dart';
import 'package:ark_module_setup/utils/services/mixpanel_manager.dart';
import 'package:ark_module_setup/utils/services/push_notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArkMainController extends GetxController {
  final ArkMainUseCase _useCase =
      ArkMainUseCase(ArkMainRepositoryImpl(ArkMainRemoteDataSourceImpl()));
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  late SharedPreferences _prefs;
  final _dynamicLinkService = DynamicLinkService();

  final Rx<RemoteConfigEntity> _remoteConfig = const RemoteConfigEntity(
    apiBaru: false,
    baseUrl: '',
    forceLogout: false,
    homeCache: false,
    isChecking: '',
    isImportant: '',
    isMaintenance: '',
    isPrakerjaMaintenance: false,
    newVersion: 0.0,
    prakerjaBaseUrl: '',
  ).obs;

  Rx<RemoteConfigEntity> get remoteConfig => _remoteConfig;

  final Rx<double> _buildNumber = 0.0.obs;
  Rx<double> get buildNumber => _buildNumber;

  final Rx<bool> _isLoading = true.obs;
  Rx<bool> get isLoading => _isLoading;

  @override
  void onInit() async {
    _prefs = await SharedPreferences.getInstance();
    await MixpanelManager.init();
    await checkRemoteConfig();
    //TODO
    // await checkAppVersion();
    PushNotificationService(_messaging)
      ..initialize()
      ..initializeLocalNotification();
    _dynamicLinkService.handleDynamicLinks();
    await Future.delayed(const Duration(milliseconds: 3000));
    await changeLoading(false);
    super.onInit();
  }

  Future changeLoading(bool val) async {
    _isLoading.value = val;
  }

  Future checkTrackingStatus() async {
    final status = await AppTrackingTransparency.trackingAuthorizationStatus;
    log("TRACKING STATUS : $status");
    if (status == TrackingStatus.notDetermined) {
      final status =
          await AppTrackingTransparency.requestTrackingAuthorization();
      log("TRACKING STATUS BARU : $status");
    }
  }

  //TODO
  // Future checkAppVersion() async {
  //   final info = await PackageInfo.fromPlatform();
  //   // final currentVersion =
  //   //     double.parse(info.version.trim().replaceAll(".", ""));
  //   _buildNumber.value =
  //       double.parse(info.buildNumber.trim().replaceAll(".", ""));

  //   if (_remoteConfig.value.newVersion > _buildNumber.value) {
  //     AppDialog.dialogNeedUpdate();
  //   }
  // }

  Future checkRemoteConfig() async {
    final remoteConfigCache = _prefs.getString('remote_config') ?? '';
    if (remoteConfigCache.isNotEmpty) {
      _remoteConfig.value =
          RemoteConfigDTO.fromJson(json.decode(remoteConfigCache));
      log("LOAD REMOTE CONFIG FROM CACHE : ${_remoteConfig.value}");
    }
    final response = await _useCase.getRemoteConfig();
    response.fold(
      ///IF RESPONSE IS ERROR
      (fail) => ExceptionHandle.execute(fail),

      ///IF RESPONSE SUCCESS
      (data) async {
        _remoteConfig.value = data;
      },
    );
  }
}
