import 'package:flutter/material.dart';
import 'package:todo_app/app/data/utils/constants.dart';
import 'package:todo_app/app/modules/widgets/appbar.dart';
import 'package:todo_app/app/modules/widgets/header_profile_screen.dart';
import 'package:todo_app/app/modules/widgets/rounded_button.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Appbar(
                  'Profile',
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 20),
                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        HeaderProfile(),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Center(
                              child: RoundedButton(
                                text: "Edit Profile",
                                color: blueColor,
                                width: 0.5,
                                press: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Center(
                      child: RoundedButton(
                        text: "Logout",
                        color: Color(0xffEC4646),
                        width: 0.5,
                        press: () => () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
