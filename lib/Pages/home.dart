import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Istiyak 1st Flutter app" ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Text("Hello Istiyak"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}