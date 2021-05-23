import 'package:get/get.dart';
import 'package:todo_app/app/data/controllers/api_repository.dart';

class ApiController extends GetxController {
  final ApiRepository repository;
  ApiController({this.repository}) : assert(repository != null);

  @override
  void onInit() {
    super.onInit();
  }
}
