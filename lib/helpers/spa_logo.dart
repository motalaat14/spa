import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double logoSize;
  Logo({@required this.logoSize});

  @override
  Widget build(BuildContext context) {
    return Text('.spa.', style: TextStyle(fontSize: logoSize),);
  }
}
