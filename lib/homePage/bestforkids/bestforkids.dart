// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

import '../../data/data.dart';
import 'bestforkidsitem.dart';

class BestForKids extends StatelessWidget {
  const BestForKids({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return BestForKidsItem(games
              .where((element) => element.classification == 'kid')
              .toList()[index]);
        },
        itemCount:
            games.where((element) => element.classification == 'kid').length,
      ),
    );
  }
}
