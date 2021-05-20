import 'package:todo_app/app/data/models/Todo.dart';
import 'package:todo_app/app/data/providers/api_provider.dart';

class ApiRepository {
  final ApiProvider provider;
  ApiRepository({required this.provider});

  Future<Todo> getToDo() async {
    final res = await provider.getToDo();
    if (res.status.hasError) {
      print(res.body);
      return res.body;
    } else {
      Todo data;
      data = new Todo.fromJson(res.body);
      return data;
    }
  }
}
