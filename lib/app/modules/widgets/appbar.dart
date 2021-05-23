import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/data/utils/colors.dart';
import 'package:todo_app/app/data/utils/constants.dart';

class Appbar extends StatelessWidget {
  final String title;
  Appbar(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      color: greyBackgroundColor,
      child: Row(
        children: [
          SizedBox(width: 20.0),
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
