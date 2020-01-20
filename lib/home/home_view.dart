import 'package:flutter/material.dart';
import 'package:spa/drawer/drawer_view.dart';
import 'package:spa/helpers/home_card.dart';
import 'package:spa/helpers/spa_logo.dart';
import 'package:spa/service/service_view.dart';

class Home extends StatefulWidget {
  static String id = 'home_view';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Logo(logoSize: 26),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_none),
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            HomeCard(
              onPressed: (){
                Navigator.pushNamed(context, Service.id);
              },
              image: 'assets/spa01.jpg',
              serviceTitle: 'Traditional Massage',
              serviceDescription: 'traditional massage description\n about this service',
            ),
            HomeCard(
              onPressed: (){
                Navigator.pushNamed(context, Service.id);
              },
              image: 'assets/spa02.jpg',
              serviceTitle: 'Spitial Massage',
              serviceDescription: 'traditional massage description\n about this service',
            ),
            HomeCard(
              onPressed: (){
                Navigator.pushNamed(context, Service.id);
              },
              image: 'assets/spa03.jpg',
              serviceTitle: 'Modern Massage',
              serviceDescription: 'modern massage description\n about this service',
            ),
          ],
        ));
  }
}
