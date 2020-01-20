import 'package:flutter/material.dart';
import 'package:spa/helpers/basic_button.dart';
import 'package:spa/helpers/basic_textbox.dart';
import 'package:spa/helpers/spa_logo.dart';

class Register extends StatefulWidget {
  static String id = 'register_view';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 80),
              child: Logo(logoSize: 80),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Text(
                'REGISTER',
                style: TextStyle(fontSize: 24),
              ),
            ),
            BasicTextbox(hint: 'enter your full name'),
            BasicTextbox(hint: 'enter your email'),
            BasicTextbox(hint: 'enter your password'),
            BasicTextbox(hint: 'confirm your password'),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 30),
              child: BasicButton(
                buttonWidth: MediaQuery.of(context).size.width,
                buttonHeight: 55,
                onPressed: () {},
                buttonColor: Colors.amber,
                buttonText: 'Register',
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
