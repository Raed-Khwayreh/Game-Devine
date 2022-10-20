// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:mobile_games_store_ui/colors/colors.dart';
import 'package:mobile_games_store_ui/redundant/textdesgin.dart';
import 'package:flutter/material.dart';

class AppBarDesign extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDesign({super.key});

  @override
  Size get preferredSize => Size(0, 100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: color1,
      elevation: 0,
      toolbarHeight: 100,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: color2,
              size: MediaQuery.of(context).size.width * 0.07,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width > 300
                ? MediaQuery.of(context).size.width / 1.5
                : 100,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color2,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.search,
                  color: color1,
                  size: MediaQuery.of(context).size.width * 0.1,
                ),
                Visibility(
                  visible: MediaQuery.of(context).size.width > 300,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                Visibility(
                  visible: MediaQuery.of(context).size.width > 300,
                  child: TextDesgin(
                      "Search games",
                      MediaQuery.of(context).size.width * 0.04,
                      FontWeight.w500,
                      color1),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/game.png',
            width: MediaQuery.of(context).size.width * 0.09,
          )
        ],
      ),
    );
  }
}
