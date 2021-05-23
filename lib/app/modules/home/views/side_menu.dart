import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/modules/home/views/list_menu.dart';

import '../../../data/utils/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                child: Image.asset(
                  'assets/images/sidemenu.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 97,
                    ),
                    ClipOval(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.white,
                        child: Image.asset(
                          'assets/images/foto_profile.png',
                          width: 98,
                          height: 98,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      'Agung Sidik M',
                      style: whiteTextStyle.copyWith(fontSize: 24),
                    ),
                    Text(
                      'Flutter Developer',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w100),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    ListMenu(
                      size: size,
                      name: 'Categories',
                      icon: 'icon_category.png',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListMenu(
                      size: size,
                      name: 'Analitycal',
                      icon: 'icon_analityc.png',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListMenu(
                      size: size,
                      name: 'History',
                      icon: 'icon_history.png',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListMenu(
                      size: size,
                      name: 'Account',
                      icon: 'icon_account.png',
                      onTap: () {
                        Get.toNamed('/profile');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
