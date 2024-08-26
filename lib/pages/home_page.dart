import 'package:flutter/material.dart';
import 'package:test_app/models/catalog.dart';
import 'package:test_app/widgets/drawer.dart';
import 'package:test_app/widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  //final int days = 30;
  //final String name = "codepur";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Kiosk"),
        centerTitle: true,
        //backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
    );
  }
}
