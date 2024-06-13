import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

Alignment? startAlignment;
var endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  GradiantContainer({super.key, required this.colors});

  final List<Color> colors;

  final Alignment startAlignment = Alignment.topLeft;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: StyledText('Hello from dynamic class'),
      ),
    );
  }
}
