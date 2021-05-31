import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/controllers/api_repository.dart';
import '../../../data/models/TodoResponse.dart';

class HomeController extends GetxController {
  HomeController({this.apiRepository});
  final ApiRepository apiRepository;
  var isLoading = true.obs;
  var todoList = List<TodoResponse>.empty().obs;
  var onGoingTask = List<TodoResponse>.empty().obs;
  var completeTask = List<TodoResponse>.empty().obs;
  var personalCategory = List<TodoResponse>.empty().obs;
  var workCategory = List<TodoResponse>.empty().obs;
  var otherCategory = List<TodoResponse>.empty().obs;
  var isChecked = false.obs;

  var todos = List<TodoResponse>.empty().obs;
  var category = List<TodoResponse>.empty().obs;

  List storedTodos = GetStorage().read<List>('todos');

  @override
  void onInit() async {
    isLoading(true);

    isLoading(false);
    super.onInit();
  }
}
