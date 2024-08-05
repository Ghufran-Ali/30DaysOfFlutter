import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Kiosk"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "IoT Based $days Medical Kiosk $name",
          style: const TextStyle(fontSize: 26),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
