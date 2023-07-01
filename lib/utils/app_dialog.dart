import 'dart:io';

import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/routes/app_route_name.dart';
import 'package:ark_module_setup/src/presentation/common_widget/button_reusable_widgets.dart';
import 'package:ark_module_setup/utils/app_style_text.dart';
import 'package:ark_module_setup/utils/services/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_size.dart';

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
              color: kBlack1,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
    Future.delayed(const Duration(milliseconds: 2500), () => Get.back());
  }

  // static dialogNeedUpdate() {
  //   // final mC = Get.find<ArkMainController>();
  //   return Get.dialog(
  //     WillPopScope(
  //       onWillPop: () async => false,
  //       child: ButtonBarTheme(
  //         data: const ButtonBarThemeData(alignment: MainAxisAlignment.center),
  //         child: AlertDialog(
  //           shape: const RoundedRectangleBorder(
  //               borderRadius: BorderRadius.all(Radius.circular(20.0))),
  //           insetPadding:
  //               const EdgeInsets.symmetric(horizontal: 40, vertical: 140),
  //           title: ClipRRect(
  //               borderRadius: const BorderRadius.only(
  //                   topLeft: Radius.circular(20),
  //                   topRight: Radius.circular(20)),
  //               child: Image.asset('assets/images/update-thumbnail.png')),
  //           titlePadding: EdgeInsets.zero,
  //           content: Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: const [
  //               Text('Update terbaru tersedia',
  //                   style: TextStyle(
  //                       fontSize: 20,
  //                       color: Color.fromRGBO(28, 29, 32, 1),
  //                       fontWeight: FontWeight.w800)),
  //               // SizedBox(
  //               //   height: 10,
  //               // ),
  //               Text(
  //                 'Segera update aplikasi Arkademi Anda untuk mendapatkan pengalaman belajar yang maksimal.',
  //                 style: TextStyle(
  //                   color: Color.fromRGBO(28, 29, 32, 1),
  //                   fontFamily: 'SourceSansPro',
  //                   fontSize: 15,
  //                 ),
  //                 textAlign: TextAlign.center,
  //               )
  //             ],
  //           ),
  //           actionsPadding: const EdgeInsets.all(24),
  //           actions: [
  //             Column(
  //               children: [
  //                 InkWell(
  //                   onTap: () => launchUrl(Uri.parse(playStoreUrl),
  //                       mode: LaunchMode.externalApplication),
  //                   child: Container(
  //                     margin: const EdgeInsets.only(bottom: 10),
  //                     width: Get.size.width,
  //                     decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(8),
  //                       color: const Color.fromRGBO(255, 87, 24, 1),
  //                     ),
  //                     padding: const EdgeInsets.fromLTRB(70, 12, 70, 12),
  //                     child: const Text(
  //                       "Update",
  //                       style: TextStyle(
  //                           fontSize: 18,
  //                           color: Colors.white,
  //                           fontWeight: FontWeight.w600),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                   ),
  //                 ),
  //                 mC.remoteConfig.value.isImportant == "true"
  //                     ? const SizedBox()
  //                     : InkWell(
  //                         onTap: () => Get.back(),
  //                         child: Container(
  //                           width: Get.size.width,
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(8),
  //                             color: const Color.fromRGBO(237, 238, 242, 1),
  //                           ),
  //                           padding: const EdgeInsets.fromLTRB(70, 12, 70, 12),
  //                           child: const Text(
  //                             "Nanti",
  //                             style: TextStyle(
  //                                 fontSize: 18,
  //                                 color: Colors.black,
  //                                 fontWeight: FontWeight.w700),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                         ),
  //                       ),
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //     barrierDismissible: false,
  //   );
  // }

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
                    color: kBlack1,
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
                      backgroundColor: kGrey2,
                    ),
                    child: const Text(
                      'Ya',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: kBlack1,
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
                      backgroundColor: kBlue1,
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
              color: kBlack1,
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
              color: kBlue1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  static dialogSuccess(String text) {
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
          Lottie.asset('assets/images/success-animation.json',
              height: 100, width: 100, repeat: false),
          const SizedBox(height: 35),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  static dialogTimeOutQuizWebinar(VoidCallback onPressed) {
    return Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        titlePadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
        title: WillPopScope(
          onWillPop: () async => false,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  'assets/images/pop-up-kumpulkan.png',
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15),
                child: Material(
                  color: Colors.white,
                  child: Text(
                    'Waktu kamu sudah habis. Silakan kumpulkan.',
                    style: TextStyle(
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                      color: kBlack1,
                      fontSize: 13.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    backgroundColor: kBlue1,
                  ),
                  onPressed: onPressed,
                  child: const Text(
                    'Kumpulkan',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static dialogKumpulkanQuizWebinar(int newIndex, VoidCallback onPressed) {
    Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
          title: WillPopScope(
            onWillPop: () async => false,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/images/pop-up-kumpulkan.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15),
                  child: Material(
                    color: Colors.white,
                    child: Text(
                      'Anda sudah menjawab semua pertanyaan kuis ini. Silakan kumpulkan.',
                      style: TextStyle(
                        height: 1.4,
                        fontWeight: FontWeight.bold,
                        color: kBlack1,
                        fontSize: 13.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        backgroundColor: kBlue1,
                      ),
                      onPressed: onPressed,
                      child: const Text(
                        'Kumpulkan',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ),
        barrierDismissible: true);
  }

  static dialogScStartQuiz({
    required VoidCallback onPressed,
  }) {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            child: Image.asset(
              'assets/images/pop-up-mulaikuis.png',
              scale: 0.5,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15),
            child: Material(
              color: Colors.white,
              child: Text(
                'Anda akan memulai kuis. Silahkan konfirmasi',
                style: TextStyle(
                  height: 1.4,
                  fontWeight: FontWeight.bold,
                  color: kBlack1,
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
                height: Get.size.height * 0.07,
                width: Get.size.width * 0.27,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                    backgroundColor: kGrey2,
                  ),
                  child: Text(
                    'Batal',
                    style: TextStyle(
                      color: kBlack1,
                      fontSize: Get.size.width < width320Pixel
                          ? 9
                          : Get.size.width < width360Pixel
                              ? 10.5
                              : 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              const SizedBox(width: 13),
              SizedBox(
                height: Get.size.height * 0.07,
                width: Get.size.width * 0.27,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                    backgroundColor: kBlue1,
                  ),
                  onPressed: onPressed,
                  child: Text(
                    'Mulai Kuis',
                    style: TextStyle(
                      fontSize: Get.size.width < width320Pixel
                          ? 9
                          : Get.size.width < width360Pixel
                              ? 10.5
                              : 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }

  static dialogValidateUnjukKeterampilan(VoidCallback onPressed) {
    // final _scWebinarC = Get.find<ArkCourseStatusPrakerjaController>();
    Get.defaultDialog(
      barrierDismissible: false,
      title: '',
      middleText: '',
      titlePadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Column(
          children: [
            const Text(
              'Apakah kamu yakin untuk mengunggah link tersebut?',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff1C1D20),
                fontWeight: FontWeight.w800,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 3),
                  child: ClipOval(
                    child: Container(
                      width: 13,
                      height: 13,
                      color: const Color(0xffF63C3C),
                      child: const Center(
                        child: Text(
                          '!',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Expanded(
                  child: Text(
                    'Kamu tidak dapat mengubah link tersebut setelah mengirim tugas Unjuk Keterampilan. Tetap kirim?',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff33353A),
                      fontFamily: 'SourceSansPro',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Row(
              children: [
                const Spacer(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'Periksa Kembali',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1B91D9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.5,
                    ),
                    ButtonReusableWidgets(
                        width: 90,
                        isOutlinedButton: false,
                        onPressed: onPressed,
                        // () async {
                        //   Get.back();
                        //   await _scWebinarC.postUnjukKeterampilan(
                        //       _scWebinarC.unjukKeterampilanC.value.text.trim());
                        // },
                        borderRadius: BorderRadius.circular(5),
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                          horizontal: 25,
                        ),
                        isGradient: const LinearGradient(
                          colors: [
                            Color(0xff159FE0),
                            Color(0xff0977BE),
                          ],
                        ),
                        title: 'Kirim',
                        titleStyle: subTitleStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static dialogScRetakeQuiz(VoidCallback onPressed) {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            child: Image.asset(
              'assets/images/pop-up-retake-quiz.png',
              scale: 0.5,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15),
            child: Material(
              color: Colors.white,
              child: Text(
                'Anda akan mengulang kuis. Silahkan konfirmasi',
                style: TextStyle(
                  height: 1.4,
                  fontWeight: FontWeight.bold,
                  color: kBlack1,
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
                height: 45,
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                    backgroundColor: kGrey2,
                  ),
                  child: const Text(
                    'Batal',
                    style: TextStyle(
                      color: kBlack1,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              const SizedBox(width: 13),
              SizedBox(
                height: 45,
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                    backgroundColor: kBlue1,
                  ),
                  onPressed: onPressed,
                  child: const Text(
                    'Ulangi Kuis',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }

  static dialogFailedRetakeQuiz() {
    return Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
          contentPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          title: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset(
                  'assets/images/pop-up-fail.png',
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15),
                child: Material(
                  color: Colors.white,
                  child: Text(
                    'Sisa jatah mengulangi kuis anda sudah habis. Anda tidak bisa mengulangi kuis lagi',
                    style: TextStyle(
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                      color: kBlack1,
                      fontSize: 13.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 90,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                    backgroundColor: kRed1,
                  ),
                  child: const Text(
                    'Oke',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => Get.back(),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        barrierDismissible: false);
  }

  static dialogCheckPassedScore(int passingScore) {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        title: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.asset(
                'assets/images/pop-up-not-passed.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 15),
              child: Material(
                color: Colors.white,
                child: Text(
                  'Nilai anda belum memenuhi syarat.\n(Minimal $passingScore)',
                  style: const TextStyle(
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                    color: kBlack1,
                    fontSize: 13.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                  backgroundColor: kRed1,
                ),
                child: const Text(
                  'Oke',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  static dialogKumpulkanUnjukAndMandiri(VoidCallback onTap, String text) {
    return Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        titlePadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.symmetric(horizontal: 25),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Siap Mengumpulkan?",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15.5,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    alignment: Alignment.center,
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFE5656),
                    ),
                    child: const Text(
                      "i",
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Flexible(
                    child: Text(
                      "Kamu hanya dapat mengumpulkan $text 1 kali.",
                      style: const TextStyle(
                        fontSize: 12.5,
                        fontFamily: "SourceSansPro",
                        color: Color(0xFF4A4F5E),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () => Get.back(),
                    child: const Text(
                      "Batalkan",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1B91D9),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () => onTap(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF0977BE),
                            Color(0xFF159FE0),
                          ],
                        ),
                      ),
                      child: const Text(
                        'Kumpulkan',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}
