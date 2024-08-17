import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/buttombar/index.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
import 'package:medicine_reminder/pages/widgets/age_options.dart';
import 'package:medicine_reminder/pages/widgets/gender_selection.dart'; // Import the AgeOption widget

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String _selectedAgeGroup = 'Mtu Mzima';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.homescreen,
      appBar: AppBar(
        backgroundColor: Styles.homescreen,
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Profile Picture",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                height: 200,
                width: double.infinity, // Take up all available width
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.file_upload_outlined,
                          size: 50,
                        ),
                      ),
                      const Text(
                        "Drag your image here",
                        style: TextStyle(color: Colors.black38),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mr John Doe",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Badili Umri",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // Other profile editing fields
                  GenderSelection(
                    onGenderSelected: (String gender) {
                      // Handle gender selection if needed
                    },
                    initialGender:
                        'Kiume', // You can set this based on user's profile data
                  ),
                  // Other profile editing fields
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Badili Rika",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio:
                    1.0, // This ensures the height equals the width
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, // Make buttons full-width
                children: [
                  MaterialButton(
                    color: Styles.splashScreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ButtomBar(), // Replace with actual screen
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15), // Adjust padding for height
                      child: Text(
                        "HIFADHI",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
