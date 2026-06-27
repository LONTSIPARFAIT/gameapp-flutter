import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(25),
      child: Column(children: games.map((game) => Text(game.name)).toList()),
    );
  }
}
