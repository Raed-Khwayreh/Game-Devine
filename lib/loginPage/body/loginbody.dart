// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../../homePage/homepage.dart';
import '../../redundant/containeddesgin.dart';
import '../../redundant/textdesgin.dart';
import '../imageSlider/clippathdesign.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPathDesign(),
        spaceBetween(10),
        TextDesgin("Game Devine", 25, FontWeight.w500, color2),
        spaceBetween(5),
        TextDesgin("Online Gaming Store", 14, FontWeight.w300, color3),
        spaceBetween(10),
        ContDesgin(MediaQuery.of(context).size.width * 0.72, 10, true, color2,
            color1, "Sign Up with Facebook"),
        spaceBetween(10),
        ContDesgin(MediaQuery.of(context).size.width * 0.72, 18, false, color1,
            color2, "Use your Email or Phone"),
        spaceBetween(18),
        TextDesgin("If you already have accont", 12, FontWeight.w300, color2),
        spaceBetween(10),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: ContDesgin(MediaQuery.of(context).size.width * 0.31, 10, false,
              color2, color1, 'Login here'),
        ),
        spaceBetween(30),
      ],
    );
  }

  SizedBox spaceBetween(double height) {
    return SizedBox(
      height: height,
    );
  }
}
