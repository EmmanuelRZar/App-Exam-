import 'package:flutter/material.dart';
import 'package:pvtransferapp/pages/profile.dart';
import 'pages/transport.dart';
import 'package:pvtransferapp/widgets/drawer.dart';
import 'pages/car.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/Welcome.dart';
import 'pages/tours.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String,WidgetBuilder>{
    loginpage.tag: (context) => loginpage(),
    welcome.tag:(context) => welcome(),
    home.tag:(context) => home(),
    drawerprc.tag:(context) => drawerprc(),
    Car.tag:(context) => Car(),
    Tours.tag:(context) => Tours(),
    Transportation.tag: (context) => Transportation(),
    Profile.tag:(context) => Profile(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PvTransfer',
      debugShowCheckedModeBanner: false,
      home: loginpage(),
      routes: routes,
    );
  }
}