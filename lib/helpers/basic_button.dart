import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Function onPressed;
  final double buttonWidth;
  final double buttonHeight;
  BasicButton({this.buttonColor, this.buttonText, this.onPressed, this.buttonHeight , this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right :10, left :10,),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: buttonColor,
          ),
          width: buttonWidth,
          height: buttonHeight,
          child: MaterialButton(
            onPressed: onPressed,
            child: Text(buttonText, style: TextStyle(color: Colors.white,fontSize: 26),),
          )),
    );
  }
}
