import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard.dart';
import 'package:flutter_app/pages/details_page.dart';
import 'package:flutter_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/dashboard': (context) => Dashboard(),
        '/details':(context)=>DetailsPage(),
      },
    );
  }
}
