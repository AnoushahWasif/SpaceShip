import 'package:flutter/material.dart';

class Bullet {
  final Offset position;

  Bullet(this.position);

  Widget build() {
    return Positioned(
      child: Image.asset('assets/images/bullet.png'),
      top: position.dy,
      left: position.dx,
    );
  }
}
