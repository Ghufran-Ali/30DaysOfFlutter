import 'package:flutter/material.dart';
import 'package:test_app/widgets/drawer.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  //final int days = 30;
  //final String name = "codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Medical Kiosk",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          "IoT Based Medical Kiosk",
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
    );
  }
}
