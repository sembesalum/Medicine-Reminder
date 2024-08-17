import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TabletAlertCardNight extends StatefulWidget {
  const TabletAlertCardNight({super.key});

  @override
  State<TabletAlertCardNight> createState() => _TabletAlertCardNightState();
}

class _TabletAlertCardNightState extends State<TabletAlertCardNight> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(width: 17.0),
            Text(
              "Dawa Za Usiku",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(
                height: 160,
                child: PageView(
                  controller: _pageController,
                  children: [
                    _buildMedicineCard(
                      "Panadol",
                      "Maumivu ya Kichwa",
                      "3x",
                      "Day",
                      "Night",
                      "Kidonge 1",
                      "Taken",
                    ),
                    _buildMedicineCard(
                      "Amoxicillin",
                      "Infection",
                      "2x",
                      "Day",
                      "Night",
                      "Kidonge 1",
                      "Pending",
                    ),
                    _buildMedicineCard(
                      "Ibuprofen",
                      "Pain Relief",
                      "3x",
                      "Day",
                      "Night",
                      "Kidonge 2",
                      "Taken",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3, // Adjust this based on the number of cards
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Styles.splashScreen,
                  dotColor: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMedicineCard(
    String medicineName,
    String description,
    String dosage,
    String frequency,
    String timeOfDay,
    String pillCount,
    String status,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      medicineName,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 55,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dosage,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(frequency),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      timeOfDay,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      pillCount,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  width: 70,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Styles.splashScreen),
                  ),
                  child: Center(
                    child: Text(
                      status,
                      style: TextStyle(color: Styles.splashScreen),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
