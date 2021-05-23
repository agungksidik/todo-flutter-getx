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

  List storedTodos = GetStorage().read<List>('todos');

  @override
  void onInit() async {
    isLoading(true);
    fetchfinaltodo();
    taskOnGoing();
    taskComplete();
    categoryPersonal();
    categoryWork();
    categoryOther();
    isLoading(false);
    super.onInit();
  }

  void fetchfinaltodo() async {
    try {
      var todos = await apiRepository.getToDo();
      print(jsonEncode(todos));
      if (todos != null) {
        todoList.value = todos;
      }
    } finally {}
  }

  void taskOnGoing() async {
    try {
      var todo = await apiRepository.getToDo();
      var onGoing = todo.where((b) => b.isComplete == false).toList();

      print("Response task On going ${onGoing.length}");
      onGoingTask.value = onGoing;
    } finally {}
  }

  void taskComplete() async {
    try {
      var todo = await apiRepository.getToDo();
      var complete = todo.where((b) => b.isComplete == true).toList();
      completeTask.value = complete;
    } finally {}
  }

  void categoryPersonal() async {
    try {
      var todo = await apiRepository.getToDo();
      var category = todo.where((b) => b.category == "Personal").toList();
      personalCategory.value = category;
    } finally {}
  }

  void categoryWork() async {
    try {
      var todo = await apiRepository.getToDo();
      var work = todo.where((b) => b.category == "Work").toList();
      workCategory.value = work;
    } finally {}
  }

  void categoryOther() async {
    try {
      var todo = await apiRepository.getToDo();
      var other = todo.where((b) => b.category == "Other").toList();
      otherCategory.value = other;
    } finally {}
  }
}
