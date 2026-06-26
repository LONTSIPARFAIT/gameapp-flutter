import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => GestureDetector(
          onTap: (() => print('on tap')),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15),
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              child: ClipRRect(child: Image.asset(games[index].bgImage)),
            ),
          ),
        )),
        separatorBuilder: ((context, index) => SizedBox(width: 50)),
        itemCount: games.length,
      ),
    );
  }
}
