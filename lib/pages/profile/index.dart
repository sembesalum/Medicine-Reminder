import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/edit_profile/index.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
import 'package:medicine_reminder/pages/widgets/afternoon_tabs/afternoon.dart';
import 'package:medicine_reminder/pages/widgets/morning_tabs/morning.dart';
import 'package:medicine_reminder/pages/widgets/night_tabs/night.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.homescreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfileScreen()));
                        },
                        icon: const Icon(Icons.edit_outlined),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 8,
                        offset: const Offset(0, 8),
                      ),
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  
                  child: Image.asset(
                    "assets/images/avatar1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Column(
                children: [
                  Text(
                    "Mr John Doe",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text("Male | Middle age")
                ],
              ),
              const SizedBox(height: 25),
              const TabletAlertCardMorning(),
              const TabletAlertCardAfternoon(),
              const TabletAlertCardNight(),
            ],
          ),
        ),
      ),
    );
  }
}
