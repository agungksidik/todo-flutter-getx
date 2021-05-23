import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Find out your age

    return Padding(
      padding: EdgeInsets.only(left: 17, right: 17, top: 28),
      child: Row(
        children: [
          //foto
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/foto_profile.png',
                  width: 89.5,
                  height: 89.5,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Agung Sidik Muhamad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'agungksidik@gmail.com',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          )
          //Nama
        ],
      ),
    );
  }
}
