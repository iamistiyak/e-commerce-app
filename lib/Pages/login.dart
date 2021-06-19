import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials/utills/routes.dart';

class Login extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLogin = false;
  String _name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.fitWidth,
                height: 250,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 100,
                child: Center(
                    child: Text(
                      "Welcome  $_name",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                        prefixIcon: Icon(Icons.accessibility_new),
                      ),
                      onChanged: (value){
                        _name = value;
                        setState(() {

                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Email",
                        labelText: "Email",
                        prefixIcon: Icon(Icons.attach_email),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, MyRoutes.HomePage),
                    //     child: const Text("Login",),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // ),
                    InkWell(
                      onTap:() async{
                        setState(()  {
                          isLogin = true;
                        });
                        await Future.delayed(Duration(seconds: 5));
                        Navigator.pushNamed(context, MyRoutes.HomePage);
                      },
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: const Duration(seconds: 5),
                        width: isLogin? 50 :150,
                        height: isLogin ? 50 :50,
                        child: isLogin
                            ? const Icon(CupertinoIcons.check_mark, color: Colors.white,)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: isLogin?BorderRadius.circular(50): BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
