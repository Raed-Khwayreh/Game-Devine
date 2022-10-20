// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:mobile_games_store_ui/redundant/ratingbar.dart';
import 'package:flutter/material.dart';
import '../../GameDetail/thirdpage.dart';
import '../../models/game.dart';

class MostPopulerItem extends StatelessWidget {
  Game game;
  MostPopulerItem(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ThirdPage(
                    game,
                    0,
                  )),
        );
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('images/${game.image![0]}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                game.name!,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 4, 115, 152),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RatingBarDesgin(game.rate!, 25, 2),
            ],
          )),
    );
  }
}
