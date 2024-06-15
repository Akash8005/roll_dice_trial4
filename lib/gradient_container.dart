import 'package:flutter/material.dart';
import 'package:roll_dice_trial4/roll_dice.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});
  Color color1;
  Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: RollDice(),
    );
  }
}
