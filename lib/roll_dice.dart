import 'package:flutter/material.dart';
import 'package:roll_dice_trial4/styled_text.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return _RollDice();
  }
}

class _RollDice extends State<RollDice> {
  @override
  var currentState = 'assets/images/dice-1.png';

  void rollDice() {
    //..
    setState(() {
      var randomizer = Random().nextInt(6) + 1;
      currentState = 'assets/images/dice-$randomizer.png';
    });
  }

  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText("Tech sign solutions pvt ltd"),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            currentState,
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: rollDice,
            child: StyledText("Roll the Dice"),
          )
        ],
      ),
    );
  }
}
