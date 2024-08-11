import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appLayout.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

Widget customTextField({
  String? title,
  String? hint,
  TextEditingController? controller,
  int? maxLines = 1,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title!,
        style: Styles.normal.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: AppLayout.getHeight(10)),
      Container(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(5),
          horizontal: AppLayout.getWidth(10),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.lightBlue,
        ),
        child: TextFormField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: Styles.hintText,
            border: InputBorder.none,
          ),
          style: Styles.normal,
        ),
      ),
    ],
  );
}