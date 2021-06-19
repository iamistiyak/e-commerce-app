import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Pages/login.dart';
import 'package:flutter_tutorials/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        '/': (context)=>Login(),
        MyRoutes.homePageRoute : (context)=>Home(),
        MyRoutes.loginPageRoute : (context)=>Login(),
      },
    );

  }
}

