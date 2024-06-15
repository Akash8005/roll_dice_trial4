import 'package:flutter/material.dart';
import 'package:roll_dice_trial4/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.black, Colors.yellow),
      ),
    ),
  );
}
