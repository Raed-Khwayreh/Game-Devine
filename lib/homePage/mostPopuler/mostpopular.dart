// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:mobile_games_store_ui/homePage/mostPopuler/mostpopulerlistviewitem.dart';
import 'package:flutter/material.dart';
import '../../data/data.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MostPopulerItem(games
              .where((element) => element.classification == 'default')
              .toList()[index]);
        },
        itemCount: games
            .where((element) => element.classification == 'default')
            .length,
      ),
    );
  }
}
