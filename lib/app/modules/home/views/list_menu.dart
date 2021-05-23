import 'package:flutter/material.dart';

import '../../../data/utils/constants.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({
    Key key,
    this.size,
    this.name,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final Size size;
  final String name;
  final String icon;
  @required
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        width: size.width,
        height: 55,
        decoration: BoxDecoration(
          color: Color(0xFF789FBC),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/' + icon,
              width: 20,
              height: 20,
              color: Color(0xFF8AB6D6),
            ),
            SizedBox(
              width: 27,
            ),
            Text(
              name,
              style: whiteTextStyle.copyWith(fontSize: 14),
            ),
            Spacer(),
            Image.asset(
              'assets/images/arrow.png',
              width: 9,
              height: 15,
              color: Color(0xFFFFFFFF),
            ),
          ],
        ),
      ),
    );
  }
}
