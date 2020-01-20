import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spa/helpers/basic_button.dart';
import 'package:spa/helpers/basic_textbox.dart';
import 'package:spa/helpers/spa_logo.dart';
import 'package:spa/home/home_view.dart';

class Login extends StatefulWidget {
  static String id = 'login_view';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 80),
              child: Logo(logoSize: 80)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Text(
                'LOG IN',
                style: TextStyle(fontSize: 24),
              ),
            ),
            BasicTextbox(hint: 'enter your user name',),
            BasicTextbox(hint: 'enter your password'),
            SizedBox(
              height: 60,
            ),
            Text(
              'forget password ?',
              style: TextStyle(color: Colors.red),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80,bottom: 30),
              child: BasicButton(
                buttonWidth: MediaQuery.of(context).size.width,
                buttonHeight: 55,
                onPressed: () {
                  Navigator.pushNamed(context, Home.id);
                },
                buttonColor: Colors.amber,
                buttonText: 'LOG IN',
              ),
            ),
            Text(
              'already have account ?',
              style: TextStyle(fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
