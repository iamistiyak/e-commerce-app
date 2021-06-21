import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials/models/catalog.dart';

class MyItemWidget extends StatelessWidget{
  final Item item;

  const MyItemWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading:Image.network(item.image) ,
        title: Text("${item.name}"),
        subtitle: Text("${item.desc}"),
        trailing: Text("\$${item.price}",
          textScaleFactor: 1,
          style: TextStyle(color: Colors.deepPurple),
        ),
      ),
    );
  }

}