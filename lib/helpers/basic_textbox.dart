import 'package:flutter/material.dart';

class BasicTextbox extends StatelessWidget {
  BasicTextbox ({@required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          contentPadding:
          EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54, width: 3.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      ),
    );
  }
}

//const kTextFieldDecoration = InputDecoration(
//  hintText: hint,
//  contentPadding:
//  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
//  border: OutlineInputBorder(
//    borderRadius: BorderRadius.all(Radius.circular(10.0)),
//  ),
//  focusedBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: Colors.black54, width: 3.0),
//    borderRadius: BorderRadius.all(Radius.circular(20.0)),
//  ),
//);