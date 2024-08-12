import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/options/age/index.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String _selectedGender = 'Kiume';

  Widget _buildGenderOption(String gender, IconData iconData, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedGender = gender;
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isSelected ? Styles.splashScreen : Colors.grey,
            width: 2,
          ),
        ),
        color: isSelected ? Styles.splashScreen : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 40,
                color: isSelected ? Colors.white : Colors.black,
              ),
              const SizedBox(width: 16),
              Text(
                gender,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
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
      backgroundColor: Colors.grey[200],
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
              'Chagua Jinsia Yako',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildGenderOption(
                    'Kiume',
                    Icons.male,
                    _selectedGender == 'Kiume',
                  ),
                  const SizedBox(height: 16),
                  _buildGenderOption(
                    'Kike',
                    Icons.female,
                    _selectedGender == 'Kike',
                  ),
                  const SizedBox(height: 16),
                  _buildGenderOption(
                    'Jinsia Nyingine',
                    Icons.transgender,
                    _selectedGender == 'Jinsia Nyingine',
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Styles.splashScreen,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AgeScreen(),
                    ),
                  );
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
