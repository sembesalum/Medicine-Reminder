import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = const Color(0xFF256D85);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color.fromARGB(255, 255, 255, 255);
  static Color categoryColor = const Color(0xFF4741A6).withOpacity(0.46);
  static Color pastpaperColor = const Color(0xFF013237);
  static Color textWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color textBlack = const Color.fromARGB(255, 255, 255, 255);
  static Color textBlueColor = const Color.fromARGB(255, 255, 255, 255);
  static Color bgColor = const Color(0xFFF9F9F9);
  static Color splashScreen = const Color(0xFF4741A6);
  static Color chatBgColor = const Color(0xFF171717);
  static Color bottomColor = const Color(0xFF90AAD6);
  static Color searchBar = const Color.fromARGB(255, 218, 223, 229);
  static Color borderColor = const Color(0xFFE8ECF4);
  static Color packageStatus = const Color(0xFFFFF1EF).withOpacity(0.9);
  static Color maleColor = const Color(0xFF219BE4).withOpacity(0.5);
  static Color femaleColor = const Color(0xFFF76CAF).withOpacity(0.5);

  static Color orangeColor = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static TextStyle normalText = GoogleFonts.fredoka(
    fontSize: 12.sp,
  );

  static TextStyle header = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle headerMain = GoogleFonts.poppins(
    fontSize: 27.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle headerMain2 = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle headerMain3 = GoogleFonts.poppins(
    fontSize: 11.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle headerMain4 = GoogleFonts.poppins(
    fontSize: 17.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle headerMain5 = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle normal = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontStyle: FontStyle.normal,
  );

  static TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle buttonText1 = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle hintText = GoogleFonts.poppins(
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: const Color(0xFF8391A1),
  );

  static TextStyle normal1 = GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );

  static TextStyle normal2 = GoogleFonts.poppins(
    fontSize: 25.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );

  static TextStyle newsTitle = GoogleFonts.poppins(
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle newsContent = GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white54,
  );

  static TextStyle bottomnav = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle readContent = GoogleFonts.poppins(
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
}