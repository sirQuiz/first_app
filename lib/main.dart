import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromARGB(206, 96, 102, 100),Color.fromARGB(206, 143, 187, 174)]),
      ),
    ),
  );
}
