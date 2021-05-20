import 'package:get/get.dart';
import 'package:todo_app/app/data/controllers/api_repository.dart';

class SplashController extends GetxController {
  final ApiRepository? apiRepository;
  SplashController({this.apiRepository});
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
