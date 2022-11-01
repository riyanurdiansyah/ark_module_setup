import 'dart:developer';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArkSpfController extends GetxController {
  late SharedPreferences prefs;

  final Rx<bool> _isLogin = false.obs;
  Rx<bool> get isLogin => _isLogin;

  final Rx<bool> _isPrakerja = false.obs;
  Rx<bool> get isPrakerja => _isPrakerja;

  final Rx<bool> _isShowDialogIg = false.obs;
  Rx<bool> get isShowDialogIg => _isShowDialogIg;

  final Rx<String> _token = "".obs;
  Rx<String> get token => _token;

  final Rx<String> _tokenPrakerja = "".obs;
  Rx<String> get tokenPrakerja => _tokenPrakerja;

  final Rx<String> _tokenWPLMS = "".obs;
  Rx<String> get tokenWPLMS => _tokenWPLMS;

  final Rx<String> _email = "".obs;
  Rx<String> get email => _email;

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    await getLoginInfo();
    super.onInit();
  }

  Future getLoginInfo() async {
    log('SpfC : Get Login Info');
    _isLogin.value = prefs.getBool('user_login') ?? false;
    _isPrakerja.value = prefs.getBool('user_prakerja') ?? false;
    _token.value = prefs.getString('token_access') ?? "";
    _tokenPrakerja.value = prefs.getString('token_access_prakerja') ?? "";
    _email.value = prefs.getString('user_email') ?? "";
    _tokenWPLMS.value = prefs.getString('token_access_wp') ?? "";
  }

  Future<void> getDialogFlag() async {
    _isShowDialogIg.value = prefs.getBool('show_dialog_ig') ?? true;
  }

  Future<void> saveSessionTour(
    String name,
  ) async {
    await prefs.setBool(name, true);
  }

  Future<void> saveLocalCache(String name, data) async {
    await prefs.setString(name, data);
  }
}
