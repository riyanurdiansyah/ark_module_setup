import 'dart:io';

import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDialog {
  static dialogDeleteAccount() {
    Get.back();
    Get.defaultDialog(
      onWillPop: () async => false,
      radius: 8,
      middleText: '',
      title: '',
      barrierDismissible: false,
      titleStyle: const TextStyle(fontSize: 0),
      content: Column(
        children: [
          const SizedBox(height: 25),
          Lottie.asset('assets/images/success-animation.json',
              repeat: false, height: 100, width: 100),
          const SizedBox(height: 35),
          const Text(
            'Tautan untuk menghapus akun sudah terkirim ke email Anda!',
            style: TextStyle(
              height: 1.4,
              fontSize: 16.5,
              color: kNewBlack1,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
    Future.delayed(const Duration(milliseconds: 2500), () => Get.back());
  }

  static dialogNeedUpdate() {
    final mC = Get.find<ArkMainController>();
    return Get.dialog(
      WillPopScope(
        onWillPop: () async => false,
        child: ButtonBarTheme(
          data: const ButtonBarThemeData(alignment: MainAxisAlignment.center),
          child: AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 140),
            title: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset('assets/images/update-thumbnail.png')),
            titlePadding: EdgeInsets.zero,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Update terbaru tersedia',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(28, 29, 32, 1),
                        fontWeight: FontWeight.w800)),
                // SizedBox(
                //   height: 10,
                // ),
                Text(
                  'Segera update aplikasi Arkademi Anda untuk mendapatkan pengalaman belajar yang maksimal.',
                  style: TextStyle(
                    color: Color.fromRGBO(28, 29, 32, 1),
                    fontFamily: 'SourceSansPro',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            actionsPadding: const EdgeInsets.all(24),
            actions: [
              Column(
                children: [
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(playStoreUrl),
                        mode: LaunchMode.externalApplication),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: Get.size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(255, 87, 24, 1),
                      ),
                      padding: const EdgeInsets.fromLTRB(70, 12, 70, 12),
                      child: const Text(
                        "Update",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  mC.remoteConfig.value.isImportant == "true"
                      ? const SizedBox()
                      : InkWell(
                          onTap: () => Get.back(),
                          child: Container(
                            width: Get.size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(237, 238, 242, 1),
                            ),
                            padding: const EdgeInsets.fromLTRB(70, 12, 70, 12),
                            child: const Text(
                              "Nanti",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                ],
              )
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static dialogOnWillPop() {
    return Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        title: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset('assets/images/pop-up-exit.png',
                    fit: BoxFit.fitWidth)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15),
              child: Material(
                color: Colors.white,
                child: Text(
                  'Yakin ingin keluar?',
                  style: TextStyle(
                    height: 1.4,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: kNewBlack1,
                    fontSize: 13.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.size.height * 0.06,
                  width: Get.size.width * 0.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      primary: kNewBlack5a,
                    ),
                    child: const Text(
                      'Ya',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: kNewBlack1,
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      exit(0);
                    },
                  ),
                ),
                const SizedBox(width: 13),
                SizedBox(
                  height: Get.size.height * 0.06,
                  width: Get.size.width * 0.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      primary: kPrimaryColor,
                    ),
                    child: const Text(
                      'Tidak',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  static dialogJRC() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      titlePadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: () async {
                      AppFirebaseAnalyticsService()
                          .addLog('mbl_prj_jcm_mvp_click_x_pop_up');
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setBool('show_dialog_job_course', true);
                      prefs.setBool('once_click_dialog_job', false);
                      prefs.setBool('once_click_dialog_job_weekday', true);

                      Get.back();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Color.fromRGBO(212, 217, 217, 1),
                      size: 20.0,
                    ))),
            Image.asset(
              'assets/images/pop_up_job_course.png',
              // scale: 0.1,
              width: 270,
              height: 270,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Material(
                color: Colors.white,
                child: Text(
                  'Kamu X Profesi',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    color: Color(0xff1c1d20),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 22, right: 21, bottom: 15, top: 10),
              child: Material(
                color: Colors.white,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      wordSpacing: 1.5,
                      fontSize: 12.5,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Ayo, cari tahu profesi yang cocok dengan\nkepribadian dan karaktermu.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1C1D20),
                          height: 1.5,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                      TextSpan(
                        text: 'Tes ini ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1C1D20),
                          height: 1.5,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                      TextSpan(
                        text: 'GRATIS ',
                        style: TextStyle(
                          color: Color(0xff1C1D20),
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                      TextSpan(
                        text: 'untuk kamu ikuti!',
                        style: TextStyle(
                          color: Color(0xff1C1D20),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setBool('show_dialog_job_course', true);
                prefs.setBool('once_click_dialog_job', false);
                prefs.setBool('once_click_dialog_job_weekday', true);
                Get.back();
                AppFirebaseAnalyticsService()
                    .addLog('mbl_prj_jcm_mvp_click_ikuti_tes');
                Get.toNamed(AppRouteName.mainCourseJobs);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                width: 125,
                // width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color(0xff8FD5FF),
                    width: 2.5,
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icon_business_job_course.png',
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Ikuti Tes',
                          style: AppStyleText.styleMontserrat(
                            color: const Color(0xff333539),
                            fontSize: 12.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  static dialogStateWithLottie(
    String lottiFile,
    String txt,
  ) {
    return Get.defaultDialog(
      radius: 8,
      middleText: '',
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: Column(
        children: [
          const SizedBox(height: 25),
          Lottie.asset('assets/images/$lottiFile',
              height: 100, width: 100, repeat: false),
          const SizedBox(height: 35),
          Text(
            txt,
            style: AppStyleText.styleMontserrat(
              fontSize: 16,
              height: 1.4,
              color: kNewBlack1,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  static dialogLoading() {
    return Get.defaultDialog(
      barrierDismissible: false,
      onWillPop: () async => false,
      radius: 8,
      middleText: '',
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: Column(
        children: [
          const SizedBox(height: 25),
          Lottie.asset('assets/images/loading-animation.json',
              height: 100, width: 100),
          const SizedBox(height: 35),
          const Text(
            'Harap Tunggu',
            style: TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  static dialogWithQuestion(
    String title,
    String content,
    String txtBatal,
    String txtOke,
    VoidCallback onTapOK,
  ) {
    return Get.defaultDialog(
      titlePadding: const EdgeInsets.only(top: 15, bottom: 10),
      title: title,
      titleStyle: AppStyleText.styleMontserrat(
        fontSize: 16,
        color: Colors.red.shade600,
        fontWeight: FontWeight.bold,
      ),
      middleText: content,
      middleTextStyle: AppStyleText.styleMontserrat(
        fontSize: 14,
        color: Colors.grey.shade400,
      ),
      cancel: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: TextButton(
          onPressed: () => Get.back(),
          child: Text(
            txtBatal,
            style: AppStyleText.styleMontserrat(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      confirm: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: TextButton(
          onPressed: () => onTapOK(),
          child: Text(
            txtOke,
            style: AppStyleText.styleMontserrat(
              fontSize: 14,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
