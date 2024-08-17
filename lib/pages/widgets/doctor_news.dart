import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/models/news_model.dart';
import 'package:medicine_reminder/pages/widgets/news_read.dart'; // Import the DetailsScreen

class DoctorAdvice extends StatelessWidget {
  const DoctorAdvice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: NewsData.doctorNewsData.length,
        itemBuilder: (context, index) {
          final newsItem = NewsData.doctorNewsData[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(newsItem),
                ),
              );
            },
            child: _buildGridItem(
              "assets/images/${newsItem.image}",
              newsItem.title ?? 'No Title',
            ),
          );
        },
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
