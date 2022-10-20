// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../GameDetail/thirdpage.dart';
import '../../data/data.dart';

class ComingGame extends StatelessWidget {
  ComingGame({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ThirdPage(
                games.where((element) => element.name == 'Mafia 3').toList()[0],
                1),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(15),
        width: double.infinity,
        height: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(
                  'images/${games.where((element) => element.name == 'Mafia 3').toList()[0].image![0]}'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
