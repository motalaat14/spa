import 'package:flutter/material.dart';
import 'package:spa/helpers/spa_logo.dart';

class Profile extends StatefulWidget {
  static String id = 'profile_view';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Logo(logoSize: 26,),
      ),
    );
  }
}
