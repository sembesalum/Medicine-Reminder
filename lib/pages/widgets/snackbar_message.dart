import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showMessage({required String message, required BuildContext context}) {
  Flushbar(
    messageText: Row(
      children: [
        const Icon(
          Icons.warning,
          color: Colors.yellow,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            message,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    ),
    backgroundColor: Colors.redAccent,
    borderRadius: BorderRadius.circular(10),
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(16),
    flushbarPosition: FlushbarPosition.BOTTOM,
    duration: const Duration(seconds: 3),
    boxShadows: const [
      BoxShadow(
        color: Colors.black45,
        offset: Offset(0, 3),
        blurRadius: 3,
      ),
    ],
    mainButton: TextButton(
      onPressed: () {
        // Some code to dismiss the flushbar or take another action
      },
      child: const Text(
        'DISMISS',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ).show(context);
}