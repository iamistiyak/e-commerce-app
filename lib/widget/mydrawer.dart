import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials/utills/routes.dart';

class MyDrawer extends StatelessWidget{
  final _accountImage = "https://aarogyaecare.com/images/istiyak.png";
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Drawer(
             child: ListView(
               padding: const EdgeInsets.all(0),
               children: [
                 DrawerHeader(
                   padding:const EdgeInsets.all(0),
                     child: UserAccountsDrawerHeader(
                       accountName: const Text("Istiyak Shaikh"),
                       accountEmail:const Text("istiyak98215@gmail.com"),
                       currentAccountPicture: CircleAvatar(
                         backgroundImage: NetworkImage(_accountImage),
                       ) ,
                     ),),
                 Container(
                   color: Colors.grey[200],
                   child: ListTile(
                     onTap: (){
                       Navigator.pushNamed(context, MyRoutes.homePageRoute);
                     },
                     leading: const Icon(
                       Icons.home,
                       color: Colors.deepPurple,
                     ),
                     title:const Text("Home", style: TextStyle(fontWeight: FontWeight.bold, ),),
                   ),
                 ),
                const SizedBox(
                   height: 0.3,
                 ),
                 Container(
                   color: Colors.grey[200],
                   child: const ListTile(
                     leading: Icon(
                       Icons.person,
                       color: Colors.deepPurple,
                     ),
                     title: Text("profile", style: TextStyle(fontWeight: FontWeight.bold, ),),
                   ),
                 ),
                 const SizedBox(
                   height: 0.4,
                 ),
                 Container(
                   color: Colors.grey[200],
                   child: const ListTile(
                     leading: Icon(
                       Icons.feedback,
                       color: Colors.deepPurple,
                     ),
                     title: Text("Feedback", style: TextStyle(fontWeight: FontWeight.bold, ),),
                   ),
                 ),
                 const SizedBox(
                   height: 0.3,
                 ),
                 Container(
                   color: Colors.grey[200],
                   child: const ListTile(
                     leading: Icon(
                       Icons.account_box_outlined,
                       color: Colors.deepPurple,
                     ),
                     title: Text("About Us", style: TextStyle(fontWeight: FontWeight.bold, ),),
                   ),
                 ),

               ],
             ),
        ));
  }

}