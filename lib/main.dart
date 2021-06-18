import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Pages/login.dart';

import 'Pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context)=>Login(),
        '/home': (context)=>Home(),
      },
    );

  }
}

