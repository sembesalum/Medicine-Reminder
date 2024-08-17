import 'package:flutter/material.dart';

class MedicinesCards extends StatelessWidget {
  const MedicinesCards({super.key});

  final List<Map<String, String>> medicines = const [
    {"name": "Panadol", "description": "Maumivu ya Kichwa", "time": "Morning", "dose": "1 Tablet"},
    {"name": "Amoxil", "description": "Infection", "time": "Afternoon", "dose": "2 Tablets"},
    {"name": "Cough Syrup", "description": "Dry Cough", "time": "Evening", "dose": "10 ml"},
    {"name": "Vitamin C", "description": "Immunity Booster", "time": "Morning", "dose": "1 Tablet"},
    {"name": "Paracetamol", "description": "Fever", "time": "Night", "dose": "2 Tablets"},
    {"name": "Insulin", "description": "Diabetes", "time": "Morning", "dose": "1 Injection"},
    {"name": "Aspirin", "description": "Blood Thinner", "time": "Afternoon", "dose": "1 Tablet"},
    {"name": "Multivitamin", "description": "General Health", "time": "Morning", "dose": "1 Tablet"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            
          ],
        ),
        ...medicines.map((medicine) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0), // Adjusted padding
          child: Container(
            height: 120, // Reduced height
            width: double.infinity,
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
              padding: const EdgeInsets.all(12.0), // Reduced padding inside the card
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            medicine["name"]!,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5), // Reduced space between texts
                          Text(
                            medicine["description"]!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              size: 23,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(), // Ensures spacing is more even
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            medicine["time"]!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Text(
                        medicine["dose"]!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),
      ],
    );
  }
}
