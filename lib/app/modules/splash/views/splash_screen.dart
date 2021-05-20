import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() async {
    Timer(Duration(seconds: 2), () {
      Get.toNamed("/home");
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LABKITA",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text("WELCOME TO"),
            ],
          ),
        ],
      ),
    );
  }
}
