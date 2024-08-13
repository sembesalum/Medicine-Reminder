import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/buttombar/index.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  _AgeScreenState createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  String _selectedAgeGroup = 'Mtu Mzima';

  Widget _buildAgeOption(String ageGroup, String imagePath, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedAgeGroup = ageGroup;
        },);
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Styles.splashScreen : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Styles.splashScreen : Colors.grey,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 70,
                height: 70,
                color: isSelected ? Colors.white : Colors.black,
              ),
              const SizedBox(height: 8),
              Text(
                ageGroup,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold, fontSize: 15
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 1.0, // This ensures the height equals the width
                children: [
                  _buildAgeOption(
                    'Mzee',
                    'assets/images/senior.png',
                    _selectedAgeGroup == 'Mzee',
                  ),
                  _buildAgeOption(
                    'Umri wa Kati',
                    'assets/images/middle.png',
                    _selectedAgeGroup == 'Umri wa Kati',
                  ),
                  _buildAgeOption(
                    'Mtu Mzima',
                    'assets/images/adult.png',
                    _selectedAgeGroup == 'Mtu Mzima',
                  ),
                  _buildAgeOption(
                    'Kijana',
                    'assets/images/teen.png',
                    _selectedAgeGroup == 'Kijana',
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
                  // Handle the next action here
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
