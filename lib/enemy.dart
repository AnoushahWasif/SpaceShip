import 'package:flutter/material.dart';

class Enemy {
  final Offset position;

  Enemy() : position = Offset(0, 0);

  Widget build() {
    return Positioned(
      child: Image.asset('assets/images/enemy.png'),
      top: position.dy,
      left: position.dx,
    );
  }
}
