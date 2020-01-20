import 'package:flutter/material.dart';
import 'package:spa/helpers/basic_button.dart';

class HomeCard extends StatelessWidget {
  final String image;
  final String serviceTitle;
  final String serviceDescription;
  final Function onPressed;
  HomeCard({@required this.image, this.serviceTitle, this.serviceDescription,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black45,
      child: Container(
        height: 260,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(image), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              serviceTitle,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              serviceDescription,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            BasicButton(
              buttonWidth: MediaQuery.of(context).size.width * .8,
              buttonHeight: 46,
              buttonColor: Colors.amber.shade100.withOpacity(.4),
              buttonText: 'حجز الخدمة',
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
