// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:mobile_games_store_ui/colors/colors.dart';
import 'package:mobile_games_store_ui/redundant/ratingbar.dart';
import 'package:mobile_games_store_ui/redundant/textdesgin.dart';
import 'package:flutter/material.dart';
import '../models/game.dart';

class ThirdPage extends StatelessWidget {
  String defaultText =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  Game game;
  ThirdPage(this.game, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('images/${game.name == 'Mafia 3' ? game.image![1] : game.image![0]}'),
                Positioned(
                  top: 50,
                  left: 15,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: color2,
                        ),
                        color: color1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                        color: color2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            TextDesgin(game.name!, MediaQuery.of(context).size.width * 0.075,
                FontWeight.w700, color2),
            TextDesgin(game.company!, MediaQuery.of(context).size.width * 0.05,
                FontWeight.w300, color3),
            RatingBarDesgin(game.rate!, 30, 2),
            SizedBox(
              height: 18,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextDesgin(
                  defaultText,
                  MediaQuery.of(context).size.width * 0.044,
                  FontWeight.w300,
                  color3),
            ),
            SizedBox(
              height: 5,
            ),
            TextDesgin('READ MORE', MediaQuery.of(context).size.width * 0.055,
                FontWeight.w700, color3),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  columnDesgin(context, 'Category', game.category!),
                  columnDesgin(context, 'Reviews', game.reviews!.toString()),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.46,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: color2,
              ),
              child: Center(
                  child:
                      TextDesgin("Free Download", 18, FontWeight.w500, color1)),
            ),
            SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }

  Column columnDesgin(BuildContext context, String text1, String text2) {
    return Column(
      children: [
        TextDesgin(text1, MediaQuery.of(context).size.width * 0.05,
            FontWeight.w700, color2),
        SizedBox(
          height: 15,
        ),
        TextDesgin(text2, MediaQuery.of(context).size.width * 0.04,
            FontWeight.w300, color2),
      ],
    );
  }
}
