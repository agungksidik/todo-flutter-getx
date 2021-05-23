import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double width;
  final double borderRadius;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.width = 1.0,
    this.borderRadius = 30.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
            backgroundColor: color,
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.0,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
