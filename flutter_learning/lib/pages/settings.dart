// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Settings Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
