import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/data/utils/constants.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/menu_icon.png',
                      width: 24,
                      height: 24,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/notif_icon.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Categories',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
                SizedBox(
                  height: 9,
                ),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Category(
                        name: 'Work',
                        taskCount: '20 Task',
                        image: 'assets/images/category_work.png',
                      ),
                      Category(
                        name: 'Personal',
                        taskCount: '20 Task',
                        image: 'assets/images/category_personal.png',
                      ),
                      Category(
                        name: 'Other',
                        taskCount: '20 Task',
                        image: 'assets/images/category_other.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'On Going',
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    Text(
                      'See all',
                      style: blackTextStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Container(
                  padding: EdgeInsets.only(top: 18, left: 40),
                  width: double.infinity,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E5EA),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Training with student',
                        style: greenTextStyle,
                      ),
                      Text(
                        '15:00 AM',
                        style: greyTextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.only(top: 18, left: 40),
                  width: double.infinity,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E5EA),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Training with student',
                        style: greenTextStyle,
                      ),
                      Text(
                        '15:00 AM',
                        style: greyTextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Complete task',
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    Text(
                      'See all',
                      style: blackTextStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Container(
                  padding: EdgeInsets.only(top: 18, left: 40),
                  width: double.infinity,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E5EA),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Training with student',
                        style: greenTextStyle,
                      ),
                      Text(
                        '15:00 AM',
                        style: greyTextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  padding: EdgeInsets.only(top: 18, left: 40),
                  width: double.infinity,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E5EA),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Training with student',
                        style: greenTextStyle,
                      ),
                      Text(
                        '15:00 AM',
                        style: greyTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        width: 78,
        height: 78,
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Image.asset(
            'assets/images/floating_button.png',
            width: 78,
            height: 78,
            fit: BoxFit.cover,
          ),
          backgroundColor: Color(0xFF8AB6D6),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Category extends StatelessWidget {
  final String name;
  final String taskCount;
  final String image;

  Category({
    required this.name,
    required this.taskCount,
    required this.image,
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
