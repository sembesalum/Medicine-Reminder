import 'package:flutter/material.dart';
import 'package:medicine_reminder/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Challenge',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.watch<CounterProvider>().value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterProvider>().incrementCounter();
            },
          ),
          const SizedBox(height: 10.0),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterProvider>().decrementCounter();
            },
          ),
        ],
      ),
    );
  }
}
