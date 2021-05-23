import 'package:flutter/material.dart';

import '../../../data/utils/constants.dart';

class Category extends StatelessWidget {
  final String name;
  final String taskCount;
  final String image;

  Category({
    this.name,
    this.taskCount,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 128,
          height: 167,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 24,
            left: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: whiteTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
              Text(
                taskCount,
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
