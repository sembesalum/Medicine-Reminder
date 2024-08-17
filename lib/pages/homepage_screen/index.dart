import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
import 'package:medicine_reminder/pages/widgets/doctor_news.dart';
import 'package:medicine_reminder/pages/widgets/search.dart';
import 'package:medicine_reminder/pages/widgets/tablet_alert.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.homescreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 17.0),
                      Image.asset(
                        "assets/images/pill1.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Nikumbushe",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications)),
                    ],
                  ),
                ],
              ),
              const SearchArea(),
              const TabletAlertCard(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.0),
                child: Text(
                  'Ushauri wa Daktari',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const DoctorAdvice(), // This will call the DoctorAdvice widget
            ],
          ),
        ),
      ),
    );
  }
}
