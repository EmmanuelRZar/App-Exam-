import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pvtransferapp/pages/car.dart';
import 'package:pvtransferapp/pages/login.dart';
import 'package:pvtransferapp/pages/tours.dart';
import 'package:pvtransferapp/pages/transport.dart';

import '../pages/profile.dart';

class drawerprc extends StatelessWidget {
 static String tag = 'drawer';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(
             gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 198, 198, 198),
                Colors.white,
              ],
            ),
          ),
        child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Example Guy', style: TextStyle(color: Colors.black),), 
                accountEmail: Text('Example@hotmail.com', style: TextStyle(color: Colors.black),),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 16, 95),
                  child: ClipOval(
                    child: Icon(
                      FontAwesomeIcons.user, size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(222, 236, 236, 236),
                      Color.fromARGB(222, 255, 255, 255),
                    ]
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              ListTile(
              leading: Icon(
                FontAwesomeIcons.car, color: Color.fromARGB(255, 63, 70, 143), size: 40,),
                title: Text('Cars', style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),),
                onTap: () {
                  Navigator.of(context).pushNamed(Car.tag);
                }//=> print('Presionaste Vuelo'),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.vanShuttle, color: Color.fromARGB(255, 7, 9, 61), size: 40,),
                title: Text('Transportation', style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),),
                onTap: (){
                  Navigator.of(context).pushNamed(Transportation.tag);
                }
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.sailboat, color: Color.fromARGB(255, 8, 158, 0), size: 40,),
                title: Text('Adventures', style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),),
                onTap: (){
                  Navigator.of(context).pushNamed(Tours.tag);                  
                }
            ),
              ListTile(
              leading: Icon(
                FontAwesomeIcons.user, color: Color.fromARGB(255, 0, 14, 95), size: 40,),
                title: Text('User', style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),),
                onTap: () {
                  Navigator.of(context).pushNamed(Profile.tag);
                }//=> print('Presionaste Vuelo'),
            ),            
            ListTile(
              leading: Icon(
                FontAwesomeIcons.rightToBracket, color: Color.fromARGB(255, 0, 0, 0), size: 30,),
                title: Text('Log In', style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),),
                onTap: () {

                }
            ),            
            ListTile(
              leading: Icon(
                FontAwesomeIcons.rightFromBracket, color: Color.fromARGB(255, 255, 0, 0), size: 30,),
                title: Text('Log Out', style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),),
                onTap: (){
                  Navigator.of(context).pushNamed(loginpage.tag);
                }
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.gear, color: Color.fromARGB(255, 86, 86, 86), size: 30,),
                title: Text('Settings', style: TextStyle(fontSize: 15),),
                onTap: (){}//=> print('Presionaste Vuelo'),
            ),
            Row(
              children:[
                Text("Search"),
                TextButton(
                  child:Text("Find Us In"),
                  onPressed: (){}
                   
                )
              ],
            )
          ],
        ),
      )
    );
  }
}