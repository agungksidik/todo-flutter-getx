import 'package:flutter/material.dart';
import 'package:todo_app/app/data/utils/constants.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String buttonTitle2;
  final Function buttonTap1;
  final Function buttonTap2;

  IllustrationPage(
      {@required this.title,
      @required this.subtitle,
      @required this.picturePath,
      this.buttonTitle1,
      this.buttonTitle2,
      this.buttonTap1,
      this.buttonTap2});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.4,
            margin: EdgeInsets.only(bottom: 50, top: 50),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(picturePath))),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: greyTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          (buttonTap1 == null)
              ? SizedBox()
              : Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 12),
                  child: SizedBox(
                    width: 277,
                    height: 38,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8AB6D6),
                        onPrimary: redColor,
                        shape: StadiumBorder(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Create Task',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
          (buttonTap2 == null)
              ? SizedBox()
              : SizedBox(
                  width: 200,
                  height: 45,
                  child: RaisedButton(
                    onPressed: buttonTap2,
                    color: greenColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      buttonTitle1,
                      style:
                          blackTextStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
