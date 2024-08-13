import 'package:flutter/material.dart';

class DoctorNews extends StatelessWidget {
  const DoctorNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor News"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Two columns
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  _buildGridItem(
                    "assets/images/pill1.png",
                    'Je, unapiga mswaki vya kutosha?',
                  ),
                  _buildGridItem(
                    "assets/images/pill1.png",
                    'Zuia Kunywa Dawa Ovyo',
                  ),
                  _buildGridItem(
                    "assets/images/pill1.png",
                    'Madhara ya Dawa Tatu',
                  ),
                  _buildGridItem(
                    "assets/images/pill1.png",
                    'Ushauri wa Dozi',
                  ),
                ],
              ),
            ),
          ],
        ),
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
