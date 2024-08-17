import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class GenderSelection extends StatefulWidget {
  final Function(String) onGenderSelected;
  final String initialGender;

  const GenderSelection({
    Key? key,
    required this.onGenderSelected,
    this.initialGender = 'Kiume',
  }) : super(key: key);

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  late String _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.initialGender;
  }

  Widget _buildGenderOption(String gender, IconData iconData, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedGender = gender;
          widget.onGenderSelected(gender);
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
                  fontSize: 15,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
