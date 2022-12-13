import 'package:flutter/material.dart';
import 'package:pvtransferapp/models/transportacion.dart';

class Transportation extends StatelessWidget {
  static String tag = 'transport-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Transportation"),
        ),
        backgroundColor: Color.fromARGB(255, 7, 9, 61),
      ),
      body: Transportacion(),
    );
  }
}