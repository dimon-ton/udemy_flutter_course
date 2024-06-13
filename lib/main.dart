import 'package:flutter/material.dart';
import 'package:first_app/gradiant_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:
            GradiantContainer(colors: const [Colors.deepPurple, Colors.amber]),
      ),
    ),
  );
}
