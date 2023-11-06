import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRolleState();
  }
}

class _DiceRolleState extends State<DiceRoller> {
  var diceRoll = 2;

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
              'assets/images/dice-$diceRoll.png',
              width: 175,
            ),
            const SizedBox(height: 25,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(14),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28
                )
              ),
              child: const Text('Roll a Dice'))
        ]);
  }
}