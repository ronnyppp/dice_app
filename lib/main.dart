import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 116, 152, 197),
            const Color.fromARGB(255, 158, 151, 151)),
      ),
    ),
  );
}
