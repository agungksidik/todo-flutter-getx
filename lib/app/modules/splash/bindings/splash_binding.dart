import 'package:get/get.dart';
import 'package:todo_app/app/data/controllers/api_repository.dart';
import 'package:todo_app/app/data/providers/api_provider.dart';
import 'package:todo_app/app/modules/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(apiRepository: Get.find()),
    );
    Get.lazyPut<ApiRepository>(() => ApiRepository(provider: Get.find()));
    Get.lazyPut<ApiProvider>(() => ApiProvider());
  }
}
