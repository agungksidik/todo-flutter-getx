import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:todo_app/app/modules/home/controllers/home_controller.dart';
import 'package:todo_app/app/modules/home/views/home_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController todoController = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(
          title: Text('Página Inicial'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.to(HomeView());
          },
        ),
        body: Container(
          child: Obx(() => ListView.separated(
              itemBuilder: (context, index) => Dismissible(
                    key: UniqueKey(),
                    onDismissed: (_) {
                      var removed = todoController.todos[index];
                      todoController.todos.removeAt(index);
                      Get.snackbar('Task Removida',
                          'A task ${removed.name} foi removida com sucesso!',
                          mainButton: TextButton(
                              child: Text('Desfazer'),
                              onPressed: () {
                                if (removed == null) {
                                  return;
                                }
                                todoController.todos.insert(index, removed);
                                removed = null;
                                if (Get.isSnackbarOpen) {
                                  Get.back();
                                }
                              }));
                    },
                    child: ListTile(
                      title: Text(todoController.todos[index].name ?? 'default',
                          style: (todoController.todos[index].isComplete)
                              ? TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough)
                              : TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color,
                                )),
                      onTap: () {
                        Get.to(HomeView());
                      },
                      leading: Checkbox(
                        value: todoController.todos[index].isComplete,
                        onChanged: (v) {
                          var changedController = todoController.todos[index];
                          changedController.isComplete = v;
                          todoController.todos[index] = changedController;
                        },
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
              separatorBuilder: (_, __) => Divider(),
              itemCount: todoController.todos.length)),
        ));
  }
}
