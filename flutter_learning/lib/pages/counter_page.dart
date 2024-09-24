// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _initial_count = 0;

  void _increment_count() {
    setState(() {
      _initial_count++;
    });
  }

  void _reset_count() {
    setState(() {
      _initial_count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Counter Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.blue[400],
      ),
      // backgroundColor: const Color.fromARGB(26, 213, 213, 213),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You have clicked the button....",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text('$_initial_count Times',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _increment_count();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    foregroundColor: Colors.white),
                child: Text(
                  "C O U N T ",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _reset_count();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[300],
                    foregroundColor: Colors.white),
                child: Text(
                  "R E S E T ",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
