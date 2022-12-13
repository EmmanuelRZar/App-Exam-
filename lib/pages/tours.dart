import 'package:flutter/material.dart';
import 'package:pvtransferapp/models/aventuras.dart';

class Tours extends StatelessWidget {
  static String tag = 'tours-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Tours"),
        ),
        backgroundColor: Color.fromARGB(255, 28, 107, 13),
      ),
      body: Aventuras(),
    );
  }
}