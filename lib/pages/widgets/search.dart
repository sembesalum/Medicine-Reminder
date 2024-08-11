import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appLayout.dart';
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
      padding: EdgeInsets.all(AppLayout.getWidth(10.0)),
      child: Container(
        height: AppLayout.getHeight(55),
        decoration: BoxDecoration(
          color: Styles.searchBar,
          border: Border.all(
            color: Styles.borderColor,
          ),
          borderRadius: BorderRadius.circular(AppLayout.getWidth(8)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(
                color: const Color(0xFF8391A1),
                fontSize: AppLayout.getHeight(15),
              ),
              suffixIcon: Icon(
                Icons.search,
                color: const Color(0xFF8391A1),
                size: AppLayout.getWidth(24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}