import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spa/helpers/spa_logo.dart';
import 'package:spa/welcome/welcome_view.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Welcome(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Logo(logoSize: 100,),
      ),
    );
  }
}
