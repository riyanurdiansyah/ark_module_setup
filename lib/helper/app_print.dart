import 'package:flutter/foundation.dart';

class AppPrint {
  static debugPrint(Object? text) {
    if (kDebugMode) {
      return print(text);
    }
  }
}
