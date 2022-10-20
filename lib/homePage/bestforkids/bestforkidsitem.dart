// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import '../../GameDetail/thirdpage.dart';
import '../../models/game.dart';
import '../../redundant/ratingbar.dart';

class BestForKidsItem extends StatelessWidget {
  Game game;
  BestForKidsItem(this.game, {super.key});

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
            ),
          ),
        );
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('images/${game.image![0]}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' ${game.name}',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.045,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 4, 115, 152),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RatingBarDesgin(game.rate!, 25, 0),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 3, 177, 235),
                    ),
                    child: Center(
                      child: Text(
                        "Best for kids",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 13, 15, 40),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
