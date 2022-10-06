import 'package:ark_module_setup/bindings/welcome_binding.dart';
import 'package:ark_module_setup/src/presentation/pages/maintenance_page.dart';
import 'package:ark_module_setup/src/presentation/pages/welcome_page.dart';
import 'package:get/get.dart';

import 'app_route_name.dart';

class AppRoute {
  static final routes = [
    // GetPage(
    //   name: AppRouteName.cpnsWebView,
    //   page: () => CpnsWebviewScreen('skd_twk1', '', 'cpns'),
    // ),

    // GetPage(
    //   name: AppRouteName.mainCourseJobs,
    //   page: () => MainCourseJobScreens(),
    // ),

    // GetPage(
    //   name: AppRouteName.resultJobCourse,
    //   page: () => ResultCourseJobScreens(),
    // ),

    // GetPage(
    //   name: AppRouteName.jobCourseMatch,
    //   page: () => JobCourseMatch(),
    // ),

    GetPage(
      name: AppRouteName.maintenance,
      page: () => const MaintenancePage(),
    ),
    GetPage(
      name: AppRouteName.splash,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),

    // GetPage(
    //   name: AppRouteName.auth,
    //   page: () => AuthPage(),
    // ),
    // GetPage(
    //   name: AppRouteName.signin,
    //   page: () => LoginPage(),
    //   transition: Transition.rightToLeft,
    // ),
    // GetPage(
    //   name: AppRouteName.signup,
    //   page: () => RegistPage(),
    //   transition: Transition.rightToLeft,
    // ),
    // GetPage(
    //   name: AppRouteName.main,
    //   page: () => MainPage(),
    //   binding: MainRegularBinding(),
    // ),
    // GetPage(
    //   name: AppRouteName.category,
    //   page: () => CategoryPage(),
    //   transition: Transition.rightToLeft,
    // ),
    // GetPage(
    //   name: AppRouteName.kelas,
    //   page: () => const ClassPage(),
    // ),
    // GetPage(
    //   name: AppRouteName.checkout,
    //   page: () => const CheckoutPage(),
    // ),
    // GetPage(
    //   name: AppRouteName.couponList,
    //   page: () => CouponListPage(),
    // ),
    // GetPage(
    //   name: AppRouteName.coin,
    //   page: () => const CoinsPage(),
    // ),
    // GetPage(
    //   name: AppRouteName.classCoin,
    //   page: () => const ClassCoinPage(),
    //   binding: ClassCoinBinding(),
    // ),
    // GetPage(
    //   name: AppRouteName.wishlist,
    //   page: () => WishlistPage(),
    //   binding: WishlistBinding(),
    // ),
    // GetPage(
    //   name: AppRouteName.notification,
    //   page: () => NotificationPage(),
    //   binding: NotificationBinding(),
    // ),
    // GetPage(
    //   name: AppRouteName.pppk,
    //   page: () => PppkPage(),
    //   binding: PPPKBinding(),
    // ),
    // GetPage(
    //   name: AppRouteName.cpns,
    //   page: () => CpnsPage(),
    // ),
    // GetPage(
    //   name: AppRouteName.cpnsInstruction,
    //   page: () => const CpnsInstructionPage(),
    // ),

    // GetPage(
    //   name: AppRouteName.waitingorder,
    //   page: () => WaitingOrderPage(),
    //   binding: WaitingOrderBinding(),
    //   transition: Transition.rightToLeft,
    // ),

    // ///PRAKERJA
    // GetPage(
    //   name: AppRouteName.mainPrakerja,
    //   page: () => PrakerjaHomePage(),
    //   binding: PrakerjaHomeBinding(),
    // ),
  ];
}
