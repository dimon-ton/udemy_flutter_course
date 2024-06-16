import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

Alignment? startAlignment;
var endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key, required this.colors});

  final List<Color> colors;
  final Alignment startAlignment = Alignment.topLeft;

  void rollDice() {
    //..
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/dice-2.png',
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
      ])),
    );
  }
}
