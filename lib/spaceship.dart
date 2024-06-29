import 'package:flutter/material.dart';

class Spaceship {
  final Offset position;

  Spaceship() : position = Offset(0, 0);

  Widget build() {
    return Image.asset('assets/images/spaceship.png');
  }
}
