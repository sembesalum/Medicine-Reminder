import 'package:flutter/material.dart';

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Learning'),
        ),
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset('assets/images/logo1.png'),
              ),
              Expanded(
                flex: 3,
                child: Image.asset('assets/images/logo2.png'),
              ),
              Expanded(
                child: Image.asset('assets/images/logo3.png'),
              ),
            ],
          ),
        ));
  }
}
