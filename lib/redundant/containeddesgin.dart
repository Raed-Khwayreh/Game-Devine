// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:mobile_games_store_ui/redundant/textdesgin.dart';

class ContDesgin extends StatelessWidget {
  double width;
  double padding;

  bool child;
  Color color;
  Color textColor;
  String text;
  ContDesgin(this.width, this.padding, this.child, this.color, this.textColor,
      this.text,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Color.fromARGB(255, 3, 177, 235),
          width: 1,
        ),
        color: color,
      ),
      child: child
          ? Row(
              children: [
                Icon(
                  Icons.facebook,
                  size: 35,
                  color: Color.fromARGB(255, 13, 15, 40),
                ),
                SizedBox(
                  width: 20,
                ),
                TextDesgin(
                  text,
                  16,
                  FontWeight.w500,
                  textColor,
                ),
              ],
            )
          : Center(
              child: TextDesgin(
              text,
              16,
              FontWeight.w500,
              textColor,
            )),
    );
  }
}
