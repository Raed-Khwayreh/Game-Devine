// ignore_for_file: prefer_const_constructors, must_be_immutable
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:mobile_games_store_ui/colors/colors.dart';
import 'package:flutter/material.dart';

class AppBarDesign extends StatefulWidget implements PreferredSizeWidget {
  Function changeSearch;
  Function valueFun;
  Function empty;
  AppBarDesign(this.changeSearch, this.valueFun, this.empty, {super.key});

  @override
  State<AppBarDesign> createState() => _AppBarDesignState();
  @override
  Size get preferredSize => Size(0, 100);
}

class _AppBarDesignState extends State<AppBarDesign> {
  bool enable = true;
  TextEditingController textForm = TextEditingController();
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
          Visibility(
            visible: !enable,
            child: InkWell(
              onTap: () {
                enable = !enable;
                widget.changeSearch();
                textForm.text = "";
                setState(() {});
              },
              child: Icon(
                Icons.arrow_back,
                color: color2,
                size: MediaQuery.of(context).size.width * 0.07,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color2,
              ),
              child: TextFormField(
                readOnly: enable,
                autofocus: false,
                onTap: () {
                  setState(() {
                    enable = !enable;
                    widget.changeSearch();
                  });
                },
                onChanged: (value) {
                  textForm.text.isEmpty ? widget.empty() : {};
                  widget.valueFun(value);
                },
                controller: textForm,
                cursorColor: color1,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 28,
                    color: color1,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: color1, fontSize: 17),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Visibility(
            visible: enable,
            child: Image.asset(
              'images/game.png',
              width: MediaQuery.of(context).size.width * 0.09,
            ),
          ),
        ],
      ),
    );
  }
}
