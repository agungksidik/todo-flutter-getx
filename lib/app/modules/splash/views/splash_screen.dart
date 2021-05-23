import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/data/utils/constants.dart';
import 'package:todo_app/app/modules/widgets/illustration_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() async {
    Timer(Duration(seconds: 2), () {
      Get.offAndToNamed("/home");
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: IllustrationPage(
          title: 'Todo App',
          subtitle: ' Agung Sidik M',
          picturePath: 'assets/images/logo.png',
        ),
      ),
    );
  }
}
