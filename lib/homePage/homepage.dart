// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:mobile_games_store_ui/homePage/CateListView/catelistview.dart';
import 'package:mobile_games_store_ui/homePage/appBar/appbar.dart';
import 'package:mobile_games_store_ui/homePage/comingGame/cominggame.dart';
import 'bestforkids/bestforkids.dart';
import 'mostPopuler/mostpopular.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CateListView(),
            ComingGame(),
            SizedBox(
              height: MediaQuery.of(context).size.width > 400
                  ? MediaQuery.of(context).size.width * 0.04
                  : 5,
            ),
            contList('Most Popular', context),
            MostPopular(),
            contList('Best for kids', context),
            BestForKids(),
          ],
        ),
      ),
    );
  }

  Container contList(String text, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        text,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.055,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 3, 177, 235),
        ),
      ),
    );
  }
}
