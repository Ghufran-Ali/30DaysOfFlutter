import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  //final int days = 30;
  //final String name = "codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Kiosk"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 148, 11),
      ),
      body: const Center(
        child: Text(
          "IoT Based Medical Kiosk",
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
      ),
      drawer: const Drawer(),
      backgroundColor: const Color.fromARGB(255, 247, 239, 173),
    );
  }
}
