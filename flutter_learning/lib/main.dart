// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/counter_page.dart';
import 'package:flutter_learning/pages/first_page.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/pages/learning_page.dart';
import 'package:flutter_learning/pages/profile_page.dart';
import 'package:flutter_learning/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // List names = ['Roman Humagain', 'Anuj Gautam', 'Pratap Yadav'];
  // void userTapped() {
  //   print("User tapped in the container ");
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            headlineMedium:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),

      // home: Scaffold(
      //   backgroundColor: Colors.blue[100],
      //   appBar: AppBar(
      //     centerTitle: true,
      //     title: Text(
      //       "My App",
      //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      //     ),
      //     backgroundColor: Colors.blue[600],
      //     elevation: 0,
      //     leading: Icon(
      //       Icons.menu,
      //       color: Colors.white,
      //     ),
      //     actions: [
      //       IconButton(
      //           onPressed: () {},
      //           icon: Icon(
      //             Icons.logout,
      //             color: Colors.white,
      //           ))
      //     ],
      //   ),

      //   // ---- for body
      //   // body: Center(
      //   //   child: Container(
      //   //       height: 300,
      //   //       width: 300,
      //   //       decoration: BoxDecoration(
      //   //         color: Colors.blue[300],
      //   //         // borderRadius: BorderRadius.circular(20)
      //   //       ),
      //   //       padding: EdgeInsets.all(25),
      //   //       child: Icon(
      //   //         Icons.favorite,
      //   //         color: Colors.white,
      //   //         size: 100,
      //   //       )),
      //   // ),

      //   // ----- for column
      //   // body: ListView(
      //   //   // mainAxisAlignment: MainAxisAlignment.center,
      //   //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   //   // scrollDirection: Axis.horizontal,
      //   //   children: [
      //   //     // 1st box
      //   //     Container(
      //   //       height: 300,
      //   //       width: 300,
      //   //       color: Colors.blue[200],
      //   //     ),

      //   //     // 2nd box
      //   //     Container(
      //   //       height: 300,
      //   //       width: 300,
      //   //       color: Colors.blue[300],
      //   //     ),

      //   //     Container(
      //   //       height: 300,
      //   //       width: 300,
      //   //       color: Colors.blue[400],
      //   //     )
      //   //   ],
      //   // ),
      //   // body: ListView.builder(
      //   //   itemCount: names.length,
      //   //   itemBuilder: (context, index) => ListTile(
      //   //     title: Text(names[index]),
      //   //   ),
      //   // ),

      //   // body: GridView.builder(
      //   //     itemCount: 64,
      //   //     gridDelegate:
      //   //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //   //     itemBuilder: (context, index) => Container(
      //   //           color: Colors.red[200],
      //   //           margin: EdgeInsets.all(2),
      //   //         )),

      //   body: Center(
      //     child: GestureDetector(
      //       onTap: () {
      //         userTapped();
      //       },
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.blue[200],
      //         child: Center(child: Text("Tap here")),
      //       ),
      //     ),
      //   ),
      // ),

// to show the first page on the home page
      home: FirstPage(),

      // creating routes for the pages
      routes: {
        'firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => Settings(),
        '/counter_page': (context) => CounterPage(),
        '/profile_page': (context) => ProfilePage(),
        '/learning_page': (context) => LearningPage()
      },
    );
  }
}
