import 'package:flutter/material.dart';

import '../../../data/utils/constants.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.black87,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Mohon tunggu",
                    style: blackTextStyle.copyWith(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
