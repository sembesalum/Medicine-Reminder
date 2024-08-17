import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
import 'package:medicine_reminder/pages/widgets/medicines.dart';

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.homescreen,
      appBar: AppBar(
        backgroundColor: Styles.homescreen,
        title: const Text(
          "Dawa Zako",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            MedicinesCards(),
          ],
        )),
      ),
    );
  }
}
