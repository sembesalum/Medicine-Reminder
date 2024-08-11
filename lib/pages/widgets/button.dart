import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

Widget customButton({
  VoidCallback? tap,
  bool? status = false,
  String? text = 'Save',
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: status == true ? null : tap,
    child: Container(
      height: 38,
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: status == false ? Styles.splashScreen : Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context!).size.width,
      child: Text(
        status == false ? text! : 'Please wait...',
        style: Styles.buttonText1.copyWith(color: Colors.white),
      ),
    ),
  );
}