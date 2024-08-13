import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/buttombar/index.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class AddMedicineScreen extends StatefulWidget {
  const AddMedicineScreen({super.key});

  @override
  _AddMedicineScreenState createState() => _AddMedicineScreenState();
}

class _AddMedicineScreenState extends State<AddMedicineScreen> {
  bool isMorningChecked = false;
  bool isEveningChecked = false;
  bool isNightChecked = false;

  int morningDose = 0;
  int eveningDose = 0;
  int nightDose = 0;
  int selectedDays = 30; // Default to 30 days

  String medicineName = "Atorvastatin"; // Initial medicine name
  String medicineReason = "Cardiovascular"; // Initial medicine name

  void _incrementDose(String timeOfDay) {
    setState(() {
      if (timeOfDay == "Morning") {
        morningDose++;
      } else if (timeOfDay == "Evening") {
        eveningDose++;
      } else if (timeOfDay == "Night") {
        nightDose++;
      }
    });
  }

  void _decrementDose(String timeOfDay) {
    setState(() {
      if (timeOfDay == "Morning" && morningDose > 0) {
        morningDose--;
      } else if (timeOfDay == "Evening" && eveningDose > 0) {
        eveningDose--;
      } else if (timeOfDay == "Night" && nightDose > 0) {
        nightDose--;
      }
    });
  }

  void _selectDays() async {
    int? result = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        int tempSelectedDays = selectedDays;

        return AlertDialog(
          backgroundColor: Colors.white, // Set dialog background color to white
          title: const Text(
            "Select Number of Days",
            style: TextStyle(color: Colors.black),
          ), // Apply Styles.homescreen
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "$tempSelectedDays days",
                    style: const TextStyle(color: Colors.black).copyWith(fontSize: 20),
                  ),
                  Slider(
                    value: tempSelectedDays.toDouble(),
                    min: 1,
                    max: 365,
                    divisions: 364,
                    label: "$tempSelectedDays days",
                    onChanged: (double newValue) {
                      setState(() {
                        tempSelectedDays = newValue.round();
                      });
                    },
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel", style: TextStyle(color: Colors.black)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(tempSelectedDays);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Styles.splashScreen,
              ),
              child: Text("OK", style: TextStyle(color: Styles.homescreen)),
            ),
          ],
        );
      },
    );

    if (result != null) {
      setState(() {
        selectedDays = result;
      });
    }
  }

  void _showMedicineNameBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        String tempMedicineName = medicineName;

        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Enter Medicine Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              TextField(
                onChanged: (value) {
                  tempMedicineName = value;
                },
                decoration: const InputDecoration(
                  labelText: "Medicine Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    medicineName = tempMedicineName;
                  });
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Styles.splashScreen,
                ),
                child: const Text("Save", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Medicine",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Medicine",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: _showMedicineNameBottomSheet,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Styles.splashScreen,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              medicineName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const Text(
                              "Cardiovascular",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_drop_down_circle,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Time",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 10),
                _buildTimeCheckbox("Morning", isMorningChecked, (bool? value) {
                  setState(() {
                    isMorningChecked = value!;
                  });
                }),
                _buildTimeCheckbox("Evening", isEveningChecked, (bool? value) {
                  setState(() {
                    isEveningChecked = value!;
                  });
                }),
                _buildTimeCheckbox("Night", isNightChecked, (bool? value) {
                  setState(() {
                    isNightChecked = value!;
                  });
                }),
                const SizedBox(height: 20),
                if (isMorningChecked) _buildDoseSection("Morning", morningDose),
                if (isEveningChecked) _buildDoseSection("Evening", eveningDose),
                if (isNightChecked) _buildDoseSection("Night", nightDose),
                const SizedBox(height: 20),
                const Text(
                  "How many days?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: _selectDays,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.calendar_today),
                        const SizedBox(width: 10),
                        Text("$selectedDays days"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              backgroundColor: Styles.splashScreen,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const ButtomBar())));
                // Handle the next action here
              },
              child: const Icon(Icons.check,color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeCheckbox(String label, bool isChecked, ValueChanged<bool?> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget _buildDoseSection(String label, int dose) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => _decrementDose(label),
                  icon: const Icon(Icons.remove),
                ),
                Text("$dose", style: const TextStyle(fontSize: 16)),
                IconButton(
                  onPressed: () => _incrementDose(label),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
