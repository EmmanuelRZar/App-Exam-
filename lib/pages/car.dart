import 'package:flutter/material.dart';
import 'package:pvtransferapp/models/carros-detalles.dart';
import 'package:pvtransferapp/models/carros.dart';

class Car extends StatelessWidget {
  static String tag = 'car-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Cars"),
        ),
        backgroundColor: Color.fromARGB(255, 63, 70, 143),
      ),
      body: Carros(),      
    );
  }
}