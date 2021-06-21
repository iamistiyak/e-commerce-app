import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials/models/catalog.dart';
import 'package:flutter_tutorials/widget/item_builder.dart';
import 'package:flutter_tutorials/widget/mydrawer.dart';

class Home extends StatelessWidget {
  final itemListRandomGenerated = List.generate(5, (index) =>CatalogModel.items[0] );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Istiyak" ,style: TextStyle(color: Colors.deepPurple),)),
      ),
      body: ListView.builder(
          itemCount: itemListRandomGenerated.length,
          itemBuilder: (context, index){
            return MyItemBuilder(item: itemListRandomGenerated[0],);
          }
          ),
      drawer: MyDrawer(),
    );
  }
}