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
  final _formKey = GlobalKey<FormState>();

  credentialCheckerLogin(BuildContext context) async{
    if(_formKey.currentState!.validate()){
      setState(()  {
        isLogin = true;
      });
      await Future.delayed(Duration(seconds: 3));
      await Navigator.pushNamed(context, MyRoutes.homePageRoute);
      setState(() {
        isLogin = false;
      });
    }

  }

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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Email",
                          labelText: "Email",
                          prefixIcon: Icon(CupertinoIcons.mail_solid),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Email Required";
                          }
                          return null;
                        },
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
                          hintText: "Enter Password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.remove_red_eye),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password required";
                          } else if(value.length<6){
                            return "At least 6 character required";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      Material(
                        borderRadius: isLogin?BorderRadius.circular(50): BorderRadius.circular(5),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap:() => credentialCheckerLogin(context),
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: const Duration(seconds: 3),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
