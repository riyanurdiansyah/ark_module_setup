import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDialog {
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
}
