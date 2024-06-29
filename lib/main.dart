import 'package:flutter/material.dart';
import 'game.dart';

void main() {
  runApp(SpaceShooterApp());
}

class SpaceShooterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Shooter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Game(),
    );
  }
}
