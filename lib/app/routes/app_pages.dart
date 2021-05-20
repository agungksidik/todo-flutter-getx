import 'package:get/get.dart';
import 'package:todo_app/app/modules/home/views/home_view.dart';
import 'package:todo_app/app/modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
    ),
  ];
}
