import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var randomDice = 2;

  void rollDice() {
    setState(() {
      randomDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$randomDice.png',
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top:20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30)),
        child: const Text('Roll Dice'),
      ),
    ]);
  }
}
