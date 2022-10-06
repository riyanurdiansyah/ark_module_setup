import 'package:ark_module_setup/helper/app_print.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelManager {
  static Mixpanel? _instance;

  static Future<Mixpanel> init() async {
    AppPrint.debugPrint('mixpanel init');
    _instance ??= await Mixpanel.init("da7470a04f3b091c8a1860f0b1f52956",
        optOutTrackingDefault: false);
    return _instance!;
  }
}
