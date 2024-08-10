import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/add_medicine/index.dart';
import 'package:medicine_reminder/pages/homepage_screen/index.dart';
import 'package:medicine_reminder/pages/medicine_screen/index.dart';
import 'package:medicine_reminder/pages/styles/appLayout.dart';


class ButtomBar extends StatefulWidget {
  const ButtomBar({super.key});

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Homepage(),
    const MedicineScreen(),
    const AddMedicineScreen(),
    const Text("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: Colors.white,
            indicatorColor: Colors.grey,
            // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(color: Colors.blueAccent)
            ),
          ),
          child: NavigationBar(
            height: AppLayout.getHeight(60),
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onItemTapped,
            // onDestinationSelected: (index) => setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_filled),
                label: "",
              ),
              NavigationDestination(icon: Icon(Icons.medical_information), label: ""),
              NavigationDestination(
                icon: Icon(Icons.add),
                label: "",
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: "",
              ),
            ],
          ),
        ),
      );
}