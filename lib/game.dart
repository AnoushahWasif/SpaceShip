import 'package:flutter/material.dart';
import 'spaceship.dart';
import 'bullet.dart';
import 'enemy.dart';
import 'game_over.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  late Spaceship spaceship;
  final List<Bullet> bullets = [];
  final List<Enemy> enemies = [];
  int score = 0;
  bool isGameOver = false;

  @override
  void initState() {
    super.initState();
    spaceship = Spaceship();
    spawnEnemies();
  }

  void spawnEnemies() async {
    while (!isGameOver) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        enemies.add(Enemy());
      });
    }
  }

  void shoot() {
    setState(() {
      bullets.add(Bullet(spaceship.position));
    });
  }

  void checkCollisions() {
    // Collision logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space Shooter'),
      ),
      body: Stack(
        children: [
          Positioned(
            child: spaceship.build(),
            bottom: spaceship.position.dy,
            left: spaceship.position.dx,
          ),
          // Display bullets
          for (var bullet in bullets) bullet.build(),
          // Display enemies
          for (var enemy in enemies) enemy.build(),
          // Display score and game over screen if needed
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: shoot,
        child: Icon(Icons.arrow_upward), // Changed the icon to arrow_upward
      ),
    );
  }
}
