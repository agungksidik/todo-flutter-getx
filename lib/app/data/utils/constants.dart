import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Credentials
String fireDocDataUsers = "data_users";
String fireDocMessages = "messages";
String credentialsPref = "credentials";
String orderDataPref = "order";
String orderId = "order_id";
String orderNumber = "order_number";
String credAppID = "userAppId";
String credUID = "uid";
String credName = "name";
String credPhone = "phone";
String credGender = "gender";
String credDob = "dob";
String credIsLoggedIn = "is_logged_in";

// DIO Pop Up
String baseURL = 'https://dev-mobile.labkita.id/api/';
String errorTitle = "Terjadi Kesalahan";
String defaultErrorMessage = "Terjadi Kesalahan, silakan coba kembali nanti";
String cancelled = "Request ke server HADIR dibatalkan, silakan coba kembali";
String timeOut =
    "Koneksi ke server memerlukan waktu yang lama, silakan coba kembali";
String failedStatusCode = "Status tidak valid dengan kode: ";
String sendTimeOut =
    "Kirim timeout di koneksi server HADIR, silakan coba kembali";

// Firebase
String aewdcFacebook =
    "Akun Anda sudah terdaftar, silakan login menggunakan Google atau Nomor Handphone";
String aewdcGoogle =
    "Akun Anda sudah terdaftar, silakan login menggunakan Facebook atau Nomor Handphone";
String signInFailed = "Login gagal, silakan coba kembali";
String invalidCredential = "Kredensial tidak valid, silakan coba kembali";
//Colors
Color blackColor = Color(0xFF222831);
Color greyBackgroundColor = Color(0xFFEBEBEB);
Color greyFontColor = Color(0xFFA9A9A9);
Color blueColor = Color(0xFF1877F2);
Color redColor = Color(0xFFEA4335);
Color whiteColor = Color(0xFFFFFFFF);
Color greenColor = Color(0xFF28B5B5);
//Textstyle
TextStyle blackTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: blackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  color: whiteColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  color: greenColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  color: greyFontColor,
);
