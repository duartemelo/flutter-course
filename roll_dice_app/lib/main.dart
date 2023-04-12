import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 28, 6, 66),
            Color.fromARGB(255, 56, 10, 135),
          ],
        ),
      ),
    ),
  );
}
