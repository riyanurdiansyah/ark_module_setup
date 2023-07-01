import 'package:ark_module_setup/utils/constants/constant_color.dart';
import 'package:flutter/material.dart';
import 'app_text.dart';

class AppSnackbar {
  static defaultSnackbar(
    String title,
  ) {
    return SnackBar(
      content: AppText.labelW600(
        title,
        13,
        kWhite1,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: kBlack2,
      duration: const Duration(milliseconds: 1300),
    );
  }

  static defaultSnackbarWithAction(
    String title,
    label,
    VoidCallback onPress,
  ) {
    return SnackBar(
        content: AppText.labelW600(
          title,
          13,
          kWhite1,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        action: SnackBarAction(
          label: label,
          textColor: kBlue3,
          onPressed: onPress,
        ),
        duration: const Duration(milliseconds: 1300),
        backgroundColor: kBlack2);
  }
}
