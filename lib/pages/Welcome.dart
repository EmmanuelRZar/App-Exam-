import 'package:flutter/material.dart';
import 'package:pvtransferapp/pages/home.dart';
import 'package:pvtransferapp/pages/login.dart';

class welcome extends StatelessWidget {
 static String tag = 'welcome-page';

  @override
  Widget build(BuildContext context) {
  final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/icons/icon-delfin.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome To The App',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome to our mobile application where you will find a variety of our services that we offer for you, among other things that we have prepared for your welcome, do not forget to create your account with us for a better experience.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(home.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Go it', style: TextStyle(color: Colors.white)),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem, loginButton],
      ),
    );    
    return Scaffold(
      body: body,
    );
  }
}
