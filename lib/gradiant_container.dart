import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

Alignment? startAlignment;
var endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  GradiantContainer({super.key, required this.colors});

  final List<Color> colors;
  final Alignment startAlignment = Alignment.topLeft;

  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
    print('Changing image...');
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
          activeDiceImage,
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
