import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRolleState();
  }
}

class _DiceRolleState extends State<DiceRoller> {
  var diceImagePath = 'assets/images/dice-2.png';

  int getRandomInt(int min, int max) {
    final random = Random();
    return min + random.nextInt(max - min + 1);
  }


  void rollDice() {
    setState(() {
      diceImagePath = "assets/images/dice-${getRandomInt(1, 6)}.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              diceImagePath,
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