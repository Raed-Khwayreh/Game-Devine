// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarDesgin extends StatelessWidget {
  double rate;
  double itemSize;
  double padding;
  RatingBarDesgin(this.rate, this.itemSize, this.padding, {super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rate,
      direction: Axis.horizontal,
      itemCount: 5,
      itemSize: itemSize,
      unratedColor: Color.fromARGB(255, 255, 255, 255),
      itemPadding: EdgeInsets.symmetric(horizontal: padding),
      itemBuilder: (context, _) => Icon(
        Icons.star_rounded,
        color: Colors.amber,
      ),
    );
  }
}
