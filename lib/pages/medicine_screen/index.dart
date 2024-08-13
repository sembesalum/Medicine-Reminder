import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
import 'package:medicine_reminder/pages/widgets/medicines.dart';

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.homescreen,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              MedicinesCards(),
            ],
          )
        ),
      ),
    );
  }
}
