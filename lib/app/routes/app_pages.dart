import 'package:get/get.dart';
import 'package:todo_app/app/modules/home/bindings/home_binding.dart';
import 'package:todo_app/app/modules/profile/views/profile_view.dart';
import 'package:todo_app/app/modules/splash/views/splash_screen.dart';

import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashScreen(),
    ),
  ];
}
