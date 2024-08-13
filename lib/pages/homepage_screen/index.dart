import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';
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
              _buildDoctorAdviceTiles(), // This will replace the "HERE" part
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorAdviceTiles() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _buildGridItem(
            "assets/images/news1.png",
            'Je, unapiga mswaki vya kutosha?',
          ),
          _buildGridItem(
            "assets/images/news4.png",
            'Zuia Kunywa Dawa Ovyo',
          ),
          _buildGridItem(
            "assets/images/news3.png",
            'Madhara ya Dawa Tatu',
          ),
          _buildGridItem(
            "assets/images/news2.png",
            'Ushauri wa Dozi',
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
