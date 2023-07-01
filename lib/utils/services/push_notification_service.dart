import 'dart:convert';
import 'dart:io';
import 'package:ark_module_setup/utils/app_print.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PushNotificationService {
  final FirebaseMessaging _fcm;
  final isLoading = true.obs;

  PushNotificationService(this._fcm);

  Future<void> initializeLocalNotification() async {
    const androidInit = AndroidInitializationSettings("@drawable/arkademiv2");
    final iOSInit = IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) {
      Get.defaultDialog(title: title!, middleText: body!);
    });
    final initializationSettings =
        InitializationSettings(android: androidInit, iOS: iOSInit);
    final localNotif = FlutterLocalNotificationsPlugin();
    await localNotif.initialize(
      initializationSettings,
      onSelectNotification: _selectNotificationLocal,
    );
  }

  Future<void> initialize() async {
    try {
      if (Platform.isIOS) {
        final settings = await _fcm.requestPermission();
        AppPrint.debugPrint(
            'User granted permission: ${settings.authorizationStatus}');
      }
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      RemoteMessage? initialMessage =
          await FirebaseMessaging.instance.getInitialMessage();
      String? token = await _fcm.getToken();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('fcm_token', token ?? '');
      AppPrint.debugPrint("FirebaseMessaging token: $token");

      if (initialMessage != null) {
        _selectNotification(initialMessage);
      }

      FirebaseMessaging.onMessage.listen((event) {
        AppPrint.debugPrint("onMessage: ${event.notification!.body}");
        _popNotif(event);
      });

      FirebaseMessaging.onMessageOpenedApp.listen((event) {
        AppPrint.debugPrint("onMessages: ${event.notification!.body}");
        _popNotif(event);
        _selectNotification(event);
      });
    } catch (e) {
      AppPrint.debugPrint('error initialize push notif service $e');
    }
  }

  void _popNotif(RemoteMessage message) {
    final localNotif = LocalPushNotification();
    var notification = message.notification;
    var title = notification!.title;
    var body = notification.body;
    var notificationData = message.data;
    if (title != null) {
      localNotif.showNotification(
        1,
        title,
        body,
        json.encode(notificationData),
      );
    }
  }

  Future<void> _selectNotification(RemoteMessage message) async {
    var notificationData = message.data;
    serializedAndNavigate(notificationData);
  }

  Future<void> _selectNotificationLocal(String? payload) async {
    var notificationData = json.decode(payload!) as Map<String, dynamic>;
    serializedAndNavigate(notificationData);
  }

  void serializedAndNavigate(Map<String, dynamic> notificationData) {
    var view = notificationData['view'];
    var cpns = notificationData['cpns'] ?? '';
    var commercialUrl = notificationData['url'] ?? '';
    var categoryName = notificationData['category_name'] ?? '';
    var categoryId = notificationData['category_id'] == null
        ? 0
        : int.parse(notificationData['category_id']);
    var idClass = notificationData['id_class'] == null
        ? 0
        : int.parse(notificationData['id_class']);
    var idBlog = notificationData['id_blog'] == null
        ? 0
        : int.parse(notificationData['id_blog']);
    if (Platform.isIOS) {
      if (view != null) {
        if (view == "kelas_page") {}
        if (view == "belajar_lagi") {
          // Get.to(() => MyClassPage());
        }
        if (view == "kategori_page") {
          // Get.to(() => SearchPage());
        }
      }
    } else {
      if (view != null) {
        if (view == "kategori_page") {
          ///TODO: Belum di aktifin
          // ndC.fetchListOfCategories(categoryId, 0, 8);
          // Get.to(() => CategoryResultPage(categoryName, categoryId.toString()));
        }

        if (view == "url_commercial") {
          ///TODO: Belum di aktifin
          Get.to(
            () => SafeArea(
              child: Stack(
                children: [
                  InAppWebView(
                    initialUrlRequest:
                        URLRequest(url: Uri.parse(commercialUrl.toString())),
                    onLoadStop: (_, __) => isLoading.value = false,
                  ),
                  Obx(
                    () => isLoading.value == true
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : const SizedBox(),
                  )
                ],
              ),
            ),
          );
        }

        if (view == "belajar_lagi") {
          ///TODO: Belum di aktifin
          // Get.to(() => MyClassPage());
        }

        if (view == "open_prakerja") {
          ///TODO: Belum di aktifin
          // Get.to(() => PrakerjaHomePage());
        }

        if (view == "open_class_prakerja") {
          ///TODO: Belum di aktifin
          // pcC.fetchDetailClass(idClass);
          // lcC.fetchDetailClass(idClass);
          // Get.to(() => PrakerjaClassPage());
        }

        if (view == "open_blog") {
          // Get.to(() => BlogSearchPage());
        }

        if (view == "open_blog_detail") {
          // Get.to(() => BlogDetailPage(id: idBlog, fromFCM: true));
        }

        if (view == "open_coupon_list") {
          // Get.to(() => CouponListPage(fromFcm: true));
        }

        if (view == "open_class_reg") {
          // lcC.fetchDetailClass(idClass);
          // Get.to(() => const ClassPage());
        }

        if (view == 'tes_cpns') {
          // AppPrint.debugPrint('tes cpns');
          // await cpnsControl.getListCpns();
          // if (cpns == 'skd') {
          //   AppPrint.debugPrint('skd');
          //   Get.to(() => const CpnsInstructionPage());
          // } else if (cpns == 'tka_tni_porlri') {
          //   Get.to(() => const CpnsInstructionPage());
          // } else if (cpns == 'psikotes_tni_porlri') {
          //   Get.to(() => const CpnsInstructionPage());
          // } else if (view == "update") {
          //   try {
          //     launchUrl(Uri.parse("market://details?id=com.arkademi.app"));
          //   } on PlatformException catch (e) {
          //     AppPrint.debugPrint(e);
          // launchUrl(
          //   Uri.parse(
          //     "https://play.google.com/store/apps/details?id=com.arkademi.app",
          //   ),
          //   mode: LaunchMode.externalApplication,
          // );
          //   } finally {
          // launchUrl(
          //   Uri.parse(
          //     "https://play.google.com/store/apps/details?id=com.arkademi.app",
          //   ),
          //   mode: LaunchMode.externalApplication,
          // );
          //   }
          // }
        }
      }
    }
  }
}

class LocalPushNotification {
  final FlutterLocalNotificationsPlugin localNotif =
      FlutterLocalNotificationsPlugin();

  Future showNotification(
      int id, String title, String? body, String content) async {
    var android = const AndroidNotificationDetails('id', 'channel ',
        channelDescription: 'description',
        priority: Priority.high,
        importance: Importance.max,
        styleInformation: BigTextStyleInformation(''));
    var iOS = const IOSNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    var generalNotif = NotificationDetails(android: android, iOS: iOS);
    await localNotif.show(id, title, body, generalNotif, payload: content);
  }
}
