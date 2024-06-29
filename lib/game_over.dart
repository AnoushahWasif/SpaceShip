import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  final int score;

  GameOver(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Game Over', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          Text('Score: $score', style: TextStyle(fontSize: 24)),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
