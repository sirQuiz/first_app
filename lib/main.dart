import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(206, 171, 243, 221),
                Color.fromARGB(206, 143, 187, 174),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: 
            const Center(
              child: Text('Hellow mobile World', style: TextStyle(
                color: Colors.black54,
                fontSize: 32
              ),),
            ),
        );
  }
}