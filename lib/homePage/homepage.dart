// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:mobile_games_store_ui/homePage/CateListView/catelistview.dart';
import 'package:mobile_games_store_ui/homePage/appBar/appbar.dart';
import 'package:mobile_games_store_ui/homePage/bestforkids/verticallistview.dart';
import 'package:mobile_games_store_ui/homePage/comingGame/cominggame.dart';
import '../data/data.dart';
import 'bestforkids/bestforkids.dart';
import 'mostPopuler/mostpopular.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool search = false;
  List l = games;

  String value = "";

  changeSearch() {
    l = games;
    search = !search;
    setState(() {});
  }

  valueFun(String value) {
    this.value = value;
    l = games
        .where((element) =>
            element.name!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign(
        changeSearch,
        valueFun,
      ),
      body: search
          ? Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return VerticalListview(l[index], false);
                },
                itemCount: l.length,
              ),
            )
          : SingleChildScrollView(
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
