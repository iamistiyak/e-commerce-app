import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/login_img.png", fit: BoxFit.fitWidth,height: 250, width: MediaQuery.of(context).size.width,),
              SizedBox(
                height: 100,
                child: Center(child: Text("Welcome", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                   TextFormField(
                     decoration: const InputDecoration(
                       hintText: "Enter Name",
                       labelText: "Name",
                       prefixIcon: Icon(Icons.accessibility_new),
                     ),
                   ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Email",
                        labelText: "Email",
                        prefixIcon: Icon(Icons.attach_email),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(onPressed: ()=> print("Login Successfully"),
                        child: Text("Login",),
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    )
                 ],),
              )

            ],
          ),
        )
      ),
    );
  }
}