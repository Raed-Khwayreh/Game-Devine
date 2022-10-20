// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:mobile_games_store_ui/loginPage/imageSlider/carouselitem.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderDesign extends StatelessWidget {
  const CarouselSliderDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 570.0,
        enlargeCenterPage: true,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 500),
        pauseAutoPlayInFiniteScroll: true,
        pauseAutoPlayOnManualNavigate: true,
      ),
      items: [
        // SizedBox(
        //   width: double.infinity,
        //   child: Image.asset(
        //     'images/213.jpg',
        //     fit: BoxFit.cover,
        //   ),
        // ),
        CarouselItem('gta2.jpg'),
        CarouselItem('valorant.jpg'),
        CarouselItem('battl.jpg'),
      ],
    );
  }
}
