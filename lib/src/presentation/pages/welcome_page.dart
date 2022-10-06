import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 120, 194, 1),
      body: Center(
        child: Image.asset(
          "assets/images/splash-2.png",
          fit: BoxFit.cover,
          width: Get.size.width,
          height: Get.size.height,
        ),
      ),
    );
  }
}
