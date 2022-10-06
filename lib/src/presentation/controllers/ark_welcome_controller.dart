import 'package:get/get.dart';
import 'ark_main_controller.dart';
import 'ark_spf_controller.dart';

class ArkWelcomeController extends GetxController {
  final _mC = Get.find<ArkMainController>();
  final _spfC = Get.find<ArkSpfController>();
  @override
  void onInit() async {
    await _spfC.getLoginInfo();
    super.onInit();
  }
}
