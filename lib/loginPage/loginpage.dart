// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'body/loginbody.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: LoginBody(),
      ),
    );
  }
}
