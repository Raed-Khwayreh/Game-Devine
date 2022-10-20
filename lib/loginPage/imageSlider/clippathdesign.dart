// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

import 'carouselsliderdesign.dart';

class ClipPathDesign extends StatelessWidget {
  const ClipPathDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyPath(),
      child: CarouselSliderDesign(),
    );
  }
}

class MyPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height * 0.7782137);
    path0.quadraticBezierTo(size.width * 0.9390000, size.height * 0.9084733,
        size.width * 0.7580000, size.height * 0.9488397);
    path0.quadraticBezierTo(size.width * 0.5500000, size.height * 0.9856336, 0,
        size.height * 0.9967939);
    path0.lineTo(0, 0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
