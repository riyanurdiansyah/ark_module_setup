import 'package:ark_module_setup/helper/app_print.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DynamicLinkService {
  // final _authC = Get.put(AuthNewController());
  // final _cC = Get.put(ClassPrakerjaController());
  // final _classC = Get.put(ClassController());
  // final _lCC = Get.put(LumenClassController());

  Future handleDynamicLinks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        FirebaseDynamicLinks.instance.onLink.listen(
          (dynamicLinkData) async {
            final deepLink = dynamicLinkData.link;
            AppPrint.debugPrint("INI URL DEEP : ${deepLink.toString()}");
            if (deepLink.toString().contains("k3")) {
              ///TODO: BELUM DI IMPLEMENT
              // Get.to(() => MiniCoursePage());
              // Future.delayed(
              //     const Duration(seconds: 1), () => Get.to(() => RegistPage()));
            } else if (deepLink.toString().contains('courseview')) {
              final urlPath = deepLink.path;
              List content = urlPath.split('-');
              AppPrint.debugPrint(
                  '${content[1]} save to prefs  with keys ${content[0]}');
              await prefs.setString('${content[0]}', content[1]);
              if (prefs.getBool('user_login') == false) {
                ///TODO: BELUM DI IMPLEMENT
                // Future.delayed(
                //     const Duration(seconds: 1), () => Get.to(() => RegistPage()));
              } else {
                ///TODO: BELUM DI IMPLEMENT
                // _lCC.fetchDetailClass(int.parse(content[1].toString()));
                // Future.delayed(const Duration(seconds: 1),
                //     () => Get.to(() => const ClassPage()));
              }
            } else if (deepLink.toString().contains('cpns')) {
              ///TODO: BELUM DI IMPLEMENT
              // AppPrint.debugPrint("Berhasil dengan cpns");
              // http.post(
              //   Uri.parse(
              //       'https://us-central1-arkademi-flutter-v201.cloudfunctions.net/app/cpnslp?subject=${DateTime.now().toString().substring(0, 19)}&email=${_authC.email.value}'),
              // );
              // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

              // Future.delayed(const Duration(seconds: 1),
              //     () => Get.to(() => const CpnsInstructionPage()));

              // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

              // Future.delayed(const Duration(seconds: 1),
              //     () => Get.to(() => const CpnsInstructionPage()));
            } else if (deepLink.toString().contains('cek-sertifikat')) {
              ///TODO: BELUM DI IMPLEMENT
              // AppPrint.debugPrint("DYNAMIC LINK CHECK SERTIF");
              // Get.to(() => ArkCekSertifikatPage(uriDeeplink: deepLink));
            } else if (deepLink.toString().contains('game')) {
              ///TODO: BELUM DI IMPLEMENT
              // AppPrint.debugPrint("Berhasil dengan game");
              // http.post(
              //   Uri.parse(
              //       'https://us-central1-arkademi-flutter-v201.cloudfunctions.net/app/gameelp?subject=${DateTime.now().toString().substring(0, 19)}&email=${_authC.email.value}'),
              // );
              // SystemChrome.setPreferredOrientations([
              //   DeviceOrientation.landscapeRight,
              //   DeviceOrientation.landscapeLeft,
              // ]);
              // Future.delayed(
              //   const Duration(seconds: 1),
              //   () => Get.to(
              //     () => const GameBasedWebView('https://game.arkd.me'),
              //   ),
              // );
            } else if (deepLink.toString().contains('pppk')) {
              ///TODO: BELUM DI IMPLEMENT
              // Future.delayed(
              //     const Duration(seconds: 1), () => Get.to(() => PppkPage()));
            } else if (deepLink.toString().contains("tunjangan")) {
              ///TODO: BELUM DI IMPLEMENT
              // Future.delayed(
              //     const Duration(seconds: 1), () => Get.to(() => KlaimPulsaPage()));
            } else if (deepLink.toString().contains("arkademicoins")) {
              ///TODO: BELUM DI IMPLEMENT
              // if (prefs.getBool('user_login') == false) {
              //   Future.delayed(
              //       const Duration(seconds: 1), () => Get.to(() => RegistPage()));
              // } else {
              //   Get.to(() => const ClassCoinPage());
              // }
            } else if (deepLink.toString().contains("coupon")) {
              ///TODO: BELUM DI IMPLEMENT
              // Get.to(() => CouponListPage());
            } else {
              AppPrint.debugPrint(
                  "Dynamic link berhasil.. tidak terjadi apa apa");
            }
          },
        ).onError(
          (error) {
            AppPrint.debugPrint(error.toString());
          },
        );
      },
    );

    PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();

    final Uri? deepLink = data?.link;
    if (deepLink != null) {
      AppPrint.debugPrint("INI URL DEEP : ${deepLink.toString()}");
      if (deepLink.toString().contains("k3")) {
        ///TODO: BELUM DI IMPLEMENT
        // Get.to(() => MiniCoursePage());
      } else if (deepLink.toString().contains('courseview')) {
        ///TODO: BELUM DI IMPLEMENT
        // final urlPath = deepLink.path;
        // List content = urlPath.split('-');
        // AppPrint.debugPrint(
        //     '${content[1]} save to prefs  with keys ${content[0]}');
        // SharedPreferences prefs = await SharedPreferences.getInstance();
        // await prefs.setString('${content[0]}', content[1]);
        // if (prefs.getBool('user_login') == false) {
        //   Future.delayed(
        //       const Duration(seconds: 1), () => Get.to(() => RegistPage()));
        // } else {
        //   _lCC.fetchDetailClass(int.parse(content[1].toString()));
        //   // _classC.fetchDetailClass(int.parse(content[1].toString()));
        //   Future.delayed(const Duration(seconds: 1),
        //       () => Get.to(() => const ClassPage()));
        // }
      } else if (deepLink.toString().contains('cpns')) {
        ///TODO: BELUM DI IMPLEMENT
        // AppPrint.debugPrint("Berhasil dengan cpns");
        // http.post(
        //   Uri.parse(
        //       'https://us-central1-arkademi-flutter-v201.cloudfunctions.net/app/cpnslp?subject=${DateTime.now().toString().substring(0, 19)}&email=${_authC.email.value}'),
        // );
        // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

        // Future.delayed(const Duration(seconds: 1),
        //     () => Get.to(() => const CpnsInstructionPage()));

        // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

        // Future.delayed(const Duration(seconds: 1),
        //     () => Get.to(() => const CpnsInstructionPage()));
      } else if (deepLink.toString().contains('game')) {
        ///TODO: BELUM DI IMPLEMENT
        // AppPrint.debugPrint("Berhasil dengan game");
        // http.post(
        //   Uri.parse(
        //       'https://us-central1-arkademi-flutter-v201.cloudfunctions.net/app/gameelp?subject=${DateTime.now().toString().substring(0, 19)}&email=${_authC.email.value}'),
        // );
        // SystemChrome.setPreferredOrientations([
        //   DeviceOrientation.landscapeRight,
        //   DeviceOrientation.landscapeLeft,
        // ]);
        // Future.delayed(
        //   const Duration(seconds: 1),
        //   () => Get.to(
        //     () => const GameBasedWebView('https://game.arkd.me'),
        //   ),
        // );
      } else if (deepLink.toString().contains('pppk')) {
        ///TODO: BELUM DI IMPLEMENT
        // AppPrint.debugPrint('berhasil dengan pppk');
        // Get.to(() => PppkPage());
      } else if (deepLink.toString().contains("tunjangan")) {
        ///TODO: BELUM DI IMPLEMENT
        // Future.delayed(
        //     const Duration(seconds: 1), () => Get.to(() => KlaimPulsaPage()));
      } else if (deepLink.toString().contains("arkademicoins")) {
        ///TODO: BELUM DI IMPLEMENT
        // if (prefs.getBool('user_login') == false) {
        //   Future.delayed(
        //       const Duration(seconds: 1), () => Get.to(() => RegistPage()));
        // } else {
        //   Get.to(() => const ClassCoinPage());
        // }
      } else if (deepLink.toString().contains("coupon")) {
        ///TODO: BELUM DI IMPLEMENT
        // Get.to(() => CouponListPage());
      } else {
        AppPrint.debugPrint("Dynamic link berhasil.. tidak terjadi apa apa");
      }
    }
  }
}
