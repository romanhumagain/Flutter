// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController my_contoller = TextEditingController();
  String _greeting = "";

  void _greet_user() {
    setState(() {
      if (my_contoller.text != "") {
        _greeting =
            'Hello, ${my_contoller.text}. You are welcome in our flutter learning series';
      } else {
        _greeting = "Please enter your name !";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Profile Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_greeting),
              TextField(
                controller: my_contoller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type your full name ...."),
              ),
              ElevatedButton(
                onPressed: () {
                  _greet_user();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[200],
                    foregroundColor: Colors.white),
                child: Text("G R E E T   M E !"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
