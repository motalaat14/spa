import 'package:flutter/material.dart';
import 'package:spa/helpers/basic_button.dart';
import 'package:spa/helpers/spa_logo.dart';
import 'package:spa/login/login_view.dart';
import 'package:spa/register/register_view.dart';

class Welcome extends StatefulWidget {
  static String id = 'welcome_view';
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: <Widget>[
          Center(
            child: Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Logo(logoSize: 80)),
          ),
          SizedBox(
            height: 100,
          ),
          Image(
            height: 250,
            width: MediaQuery.of(context).size.width,
            image: ExactAssetImage('assets/welcome.png'),
//                  fit: BoxFit.cover,
          ),
          SizedBox(
            height: 80,
          ),
          BasicButton(
            buttonWidth: MediaQuery.of(context).size.width,
            buttonHeight: 55,
            onPressed: () {
              Navigator.pushNamed(context, Login.id);
            },
            buttonColor: Colors.amber,
            buttonText: 'Log in',
          ),
          SizedBox(
            height: 20,
          ),
          BasicButton(
            buttonWidth: MediaQuery.of(context).size.width,
            buttonHeight: 55,
            onPressed: () {
              Navigator.pushNamed(context, Register.id);
            },
            buttonColor: Colors.teal,
            buttonText: 'register',
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'about ABQ',
              style: TextStyle(color: Colors.amber, fontSize: 16),
            ),
          ),
        ],
      )),
    );
  }
}
