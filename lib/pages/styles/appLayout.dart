import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
This class has functions for getting screen width and height,
For app responsiveness design
*/
class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.sizeOf(context);
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}