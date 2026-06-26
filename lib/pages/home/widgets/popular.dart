import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: ((context, index) => GestureDetector(
          onTap: (() => print('on tap')),
          child: Card(child: Image.asset(games[index].bgImage)),
        )),
        separatorBuilder: ((context, index) => SizedBox(width: 50)),
        itemCount: games.length,
      ),
    );
  }
}
