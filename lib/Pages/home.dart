import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials/widget/mydrawer.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Istiyak" ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          child: Text("Hello Istiyak"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}