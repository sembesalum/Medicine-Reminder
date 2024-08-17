import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/buttombar/index.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
import 'package:medicine_reminder/pages/widgets/age_options.dart'; // Import the new widget

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  _AgeScreenState createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  String _selectedAgeGroup = 'Mtu Mzima';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.homescreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Rika lipi ni sahihi kwako?',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 1.0,
                children: [
                  AgeOption(
                    ageGroup: 'Mzee',
                    imagePath: 'assets/images/senior.png',
                    isSelected: _selectedAgeGroup == 'Mzee',
                    onTap: () {
                      setState(() {
                        _selectedAgeGroup = 'Mzee';
                      });
                    },
                  ),
                  AgeOption(
                    ageGroup: 'Umri wa Kati',
                    imagePath: 'assets/images/middle.png',
                    isSelected: _selectedAgeGroup == 'Umri wa Kati',
                    onTap: () {
                      setState(() {
                        _selectedAgeGroup = 'Umri wa Kati';
                      });
                    },
                  ),
                  AgeOption(
                    ageGroup: 'Mtu Mzima',
                    imagePath: 'assets/images/adult.png',
                    isSelected: _selectedAgeGroup == 'Mtu Mzima',
                    onTap: () {
                      setState(() {
                        _selectedAgeGroup = 'Mtu Mzima';
                      });
                    },
                  ),
                  AgeOption(
                    ageGroup: 'Kijana',
                    imagePath: 'assets/images/teen.png',
                    isSelected: _selectedAgeGroup == 'Kijana',
                    onTap: () {
                      setState(() {
                        _selectedAgeGroup = 'Kijana';
                      });
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Styles.splashScreen,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const ButtomBar())));
                },
                child: const Icon(Icons.arrow_forward, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
