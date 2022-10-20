// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:mobile_games_store_ui/redundant/textdesgin.dart';
import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class CateListView extends StatelessWidget {
  CateListView({super.key});
  final List _names = [
    'Action',
    'Adventure',
    'Arcde',
    'Racing',
    'Puzzle',
    'Sport'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: MediaQuery.of(context).size.width * 0.09,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: TextDesgin(
                _names[index],
                MediaQuery.of(context).size.width * 0.0455,
                FontWeight.w300,
                color2),
          );
        },
        itemCount: _names.length,
      ),
    );
  }
}
