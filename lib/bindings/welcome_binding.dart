import 'package:ark_module_setup/src/presentation/controllers/ark_welcome_controller.dart';
import 'package:get/get.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ArkWelcomeController());
  }
}
