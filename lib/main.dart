import 'package:flutter/material.dart';
import 'package:spa/profile/profile_view.dart';
import 'package:spa/register/register_view.dart';
import 'package:spa/service/service_view.dart';
import 'package:spa/splash/splash_screen.dart';
import 'home/home_view.dart';
import 'login/login_view.dart';
import 'welcome/welcome_view.dart';


void main (){
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Splash(),
      ),

      routes: {
        Welcome.id: (context) => Welcome(),
        Login.id: (context) => Login(),
        Register.id:(context)=> Register(),
        Home.id :(context)=> Home(),
        Service.id:(context)=>Service(),
        Profile.id : (context)=>Profile(),
      },

    );
  }
}
