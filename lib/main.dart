import 'package:flutter/material.dart';

void main() {
  runApp(const SpeedChat());
}

class SpeedChat extends StatelessWidget {
  const SpeedChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}