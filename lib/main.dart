import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.cupertino,
      title: "Aplikasi To do",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.redAccent, accentColor: Colors.redAccent),
    ),
  );
}
