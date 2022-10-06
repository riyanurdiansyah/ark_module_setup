import 'dart:developer';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArkSpfController extends GetxController {
  late SharedPreferences prefs;

  final Rx<bool> _isLogin = false.obs;
  Rx<bool> get isLogin => _isLogin;

  final Rx<bool> _isPrakerja = false.obs;
  Rx<bool> get isPrakerja => _isPrakerja;

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
  }
}
