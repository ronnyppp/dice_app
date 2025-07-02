import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var diceRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
        diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            // choose random dice image when rolled
            'assets/dice-$diceRoll.png',
            width: 200,
          ),
          TextButton(
            // rolls dice
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            child: const Text("Roll the dice"),
          ),
        ],
      );
  }
}