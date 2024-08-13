import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class SearchArea extends StatefulWidget {
  const SearchArea({Key? key});

  @override
  State<SearchArea> createState() => _SearchAreaState();
}

class _SearchAreaState extends State<SearchArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Styles.borderColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Tafuta Dawa",
              hintStyle: TextStyle(
                color: Color(0xFF8391A1),
                fontSize: 15,
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xFF8391A1),
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}