import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArkLoadingReusable extends StatelessWidget {
  double? height;
  double? width;
  final double heightCard;
  final double widthCard;
  final EdgeInsetsGeometry padding;
  final Color bgColor;
  BorderRadiusGeometry? borderRadius;

  ArkLoadingReusable({
    Key? key,
    this.height,
    this.width,
    this.heightCard = 50,
    this.widthCard = 50,
    this.padding = const EdgeInsets.all(15),
    this.bgColor = Colors.black26,
    this.borderRadius,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? Get.height,
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: widthCard,
          height: heightCard,
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          child: CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation<Color>(bgColor),
          ),
        ),
      ),
    );
  }
}
