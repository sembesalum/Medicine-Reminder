// doctor_advice.dart
import 'package:flutter/material.dart';

class DoctorAdvice extends StatelessWidget {
  const DoctorAdvice({super.key});

  @override
  Widget build(BuildContext context) {
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
