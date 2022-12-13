import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pvtransferapp/widgets/drawer.dart';
import 'package:pvtransferapp/widgets/bottom_nav.dart';
import 'package:pvtransferapp/widgets/slide-serv.dart';
import 'package:pvtransferapp/widgets/slider-prc.dart';

class home extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {

    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context)=> ancho >=600;
    bool ismobile(BuildContext context)=> ancho <600;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset('assets/icons/logo.png', width: 150,),
        ),
        backgroundColor: Color.fromARGB(222, 255, 255, 255),
      ),
      drawer: drawerprc(),
      bottomNavigationBar: BottomNavCustom(),

      body: Container(
        color: isDesktop(context) ?Color.fromARGB(46, 7, 52, 100) : Color.fromARGB(255, 255, 255, 255), 
          child: Column(
            children: [
              Text("WELCOME", style: TextStyle( fontFamily: "Rubik", fontSize: 25,),),
              Expanded(
                child: Container(
                padding: EdgeInsets.only(top:  5),
                child: Image.asset('assets/imgs/newcr.png', fit: BoxFit.cover, width: 500,),
                ),),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top:  15),
                  child: Image.asset('assets/imgs/IMG-male.jpg', fit: BoxFit.cover, width: 500),
                )),
              Container(
                child: Text("Puerto Vallarta Jalisco", style: TextStyle(fontFamily: "Pacifico"),),
                ),                
              Expanded(
                child: Container(
                  child: myslide(),
                )),
              Container(
                child: Text("Our services", style: TextStyle(fontFamily: "Rubik", fontSize: 12),),
                ),
              Expanded(
                child: Container(
                child: slideicon()),
              ),
            ],
          ),
      ),
    );
  }
}