import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class AgeOption extends StatelessWidget {
  final String ageGroup;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const AgeOption({
    required this.ageGroup,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
