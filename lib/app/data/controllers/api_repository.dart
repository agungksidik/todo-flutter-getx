import 'package:todo_app/app/data/models/TodoResponse.dart';
import 'package:todo_app/app/data/providers/api_provider.dart';

class ApiRepository {
  final ApiProvider provider;
  ApiRepository({this.provider});

  Future<List<TodoResponse>> getToDo() async {
    final res = await provider.getToDo();
    if (res.status.hasError) {
      print(res.body);
      return res.body;
    } else {
      var data = res.body;
      // print(res.body);
      List<TodoResponse> todo =
          (data as Iterable).map((e) => TodoResponse.fromJson(e)).toList();
      return todo;
    }
  }
}
