// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  String image;
  CarouselItem(this.image,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'images/$image',
        ),
        fit: BoxFit.cover,
      )),
    );
  }
}
