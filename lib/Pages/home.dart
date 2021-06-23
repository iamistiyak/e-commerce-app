import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorials/models/catalog.dart';
import 'package:flutter_tutorials/widget/item_widget.dart';
import 'package:flutter_tutorials/widget/mydrawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final itemListRandomGenerated =
      List.generate(5, (index) => CatalogModel.items[0]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    //load the json file in string format
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    //decode json->list
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(productsData);
    //Map the json data
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Istiyak",
          style: TextStyle(color: Colors.deepPurple),
        )),
      ),
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius. circular(10),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: GridTile(
                    child: Image.network(item.image),
                    header: Container(
                        decoration: BoxDecoration(color: Colors.grey),
                        child: Container(
                            color: Colors.deepPurple,
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              item.name,
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ))),
                    footer: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Colors.grey),
                        child: Text(
                          "\$${item.price}",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        )),
                  ),
                );
              },
              itemCount: CatalogModel.items.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
