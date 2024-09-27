import 'package:flutter/material.dart';

class LearningPage extends StatelessWidget {
  LearningPage({super.key});

  var names = [
    "roman",
    "anuj",
    "pratap",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Learning Rows and Columns",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[300],
        foregroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 50,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(0)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 81,
                          spreadRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                      border: Border.all(width: 2, color: Colors.blueGrey),
                      // shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 50,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red[500],
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(0)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 81,
                          spreadRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                      border: Border.all(width: 2, color: Colors.blueGrey),
                      // shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green[500],
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(0)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 81,
                          spreadRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                      border: Border.all(width: 2, color: Colors.blueGrey),
                      // shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(0)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 81,
                          spreadRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                      border: Border.all(width: 2, color: Colors.blueGrey),
                      // shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 50,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow[500],
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(0)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 81,
                          spreadRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                      border: Border.all(width: 2, color: Colors.blueGrey),
                      // shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                        backgroundColor: Colors.redAccent,
                        radius: 18,
                      ),
                      title: Text(names[index]),
                      subtitle: Text("Member"),
                      trailing: Icon(Icons.add),
                    );
                  }),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 145.0),
                  height: 300,
                  width: 300,
                  color: Colors.green,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 40,
                        right: 40,
                        bottom: 40,
                        left: 40,
                        child: Container(
                          width: 300,
                          height: 300,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
