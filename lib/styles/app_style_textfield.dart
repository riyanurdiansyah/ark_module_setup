import 'package:flutter/material.dart';
import 'app_color.dart';

class AppStyleTextfield {
  static authForm(String labelText, String hintText, double fontSize) {
    return InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      labelText: labelText,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(5)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(5)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(5)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black38,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }

  static authTextfieldDecoration({
    String? labelText,
    String? hintText,
    double? fontSize,
  }) {
    return InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      labelText: labelText,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2,
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(5)),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black38,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
