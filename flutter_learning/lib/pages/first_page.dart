// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/counter_page.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/pages/profile_page.dart';
import 'package:flutter_learning/utils/text_style.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selected_page = 0;

  void _navigate_button_bar(int index) {
    setState(() {
      _selected_page = index;
    });
  }

  final List _pages = [
    // home page
    HomePage(),

    // for profile page
    ProfilePage(),

    // // for settings page
    // Settings(),

    // for counter page
    CounterPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "My Learning App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.blue[400],
        ),
        // body: Center(
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.blueAccent,
        //         foregroundColor: Colors.white,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(12))),
        //     onPressed: () {
        //       Navigator.pushNamed(context, '/secondpage');
        //     },
        //     child: Text("Go to second Page !"),
        //   ),
        // ),

// ************** USE OF DRAWER ***************
        drawer: Drawer(
          backgroundColor: Colors.blue[300],
          child: Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48,
                  color: Colors.white,
                ),
              ),

              // home page list tile
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 26,
                ),
                title: Text(
                  "H O M E",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(
                      context, '/homepage'); // Added missing semicolon
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 26,
                ),
                title: Text(
                  "P R O F I L E",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/profile_page');
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.countertops,
                  color: Colors.white,
                  size: 26,
                ),
                title: Text(
                  "C O U N T E R",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // pop the drawer
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/counter_page');
                },
              ),

              // setting page list tile
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 26,
                ),
                title: Text(
                  "S E T T I N G S",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // pop the drawer
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settingspage');
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.flutter_dash,
                  color: Colors.white,
                  size: 26,
                ),
                title: Text(
                  "L E A R N I N G",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // pop the drawer
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/learning_page');
                },
              ),

              // setting page list tile
            ],
          ),
        ),

        // *********** use button navigation bar ***************
        // body: _pages[_selected_page],

        // bottomNavigationBar: BottomNavigationBar(
        //     currentIndex: _selected_page,
        //     onTap: _navigate_button_bar,
        //     items: [
        //       // for home
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: "Home",
        //       ),
        //       BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.countertops), label: "Counter"),
        //     ]),
        body: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Mobile Application Development; Flutter  !",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.black54)),
              Text(
                "Flutter Developer",
                style: myStyle21(textColor: Colors.red).copyWith(fontSize: 22),
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Text Inside Card !"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Select Date & Time !",
                  style: myStyle21().copyWith(color: Colors.blue),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        DateTime? datePicked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2015),
                            lastDate: DateTime(2025));

                        if (datePicked != null) {
                          print("Date Selected:  ${datePicked}");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "Show DatePicker",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        TimeOfDay? timePicked = await showTimePicker(
                            context: context, initialTime: TimeOfDay.now());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "Show TimePicker",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ]),
          ),
        ));
  }
}
