import 'package:get/get.dart';

class ApiProvider extends GetConnect {
  Map<String, String> queryApi = {
    "api_key": "e3759057a7b881a632632b371ca441d5"
  };
  @override
  void onInit() async {
    print("api provider init");
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/';

    httpClient.addRequestModifier<void>((request) {
      request.headers['Content-type'] = 'application/json';
      request.headers['Accept'] = 'application/json';
      request.headers["Access-Control-Allow-Origin"] = "*";
      return request;
    });
  }

  Future<Response> getToDo() async {
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/';
    Response res = await get(
      "todos",
    );
    return res;
  }
}
