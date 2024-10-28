import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatDisplay extends StatefulWidget {
  const ChatDisplay({super.key});

  @override
  State<ChatDisplay> createState() => _ChatDisplayState();
}

class _ChatDisplayState extends State<ChatDisplay> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void addToDB(String message, int type) async {
    String chatId = Timestamp.now().toString();
    DatabaseReference ref = FirebaseDatabase.instance.ref("chat/$chatId");
    await ref.set({
      "userId1": "Roman",
      "userId2": "Pratap",
      "username1": "",
      "username2": "",
      "address": "",
      "text": message,
      "type": "0",
      "createdAt": DateTime.now().toIso8601String()
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController _messageController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple.shade400, Colors.pink.shade400])),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset('assets/images/avatar.png',
                                height: 50, width: 50)),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Roman Humagain",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_horiz,
                      size: 35,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "This conversation is fully encrypted. Only you and your contact will be able the view this contact",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: size.height / 1.7,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.shade100,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "Hello, how are you doing?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent.shade100,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "Hi, I'm alright, What about you?",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "23 Oct, 2024",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: TextField(
                  controller: _messageController,
                  onEditingComplete: () {
                    addToDB(_messageController.text, 0);
                    _messageController.clear();
                  },
                  decoration: InputDecoration(
                    hintText: "Message",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          addToDB(_messageController.text, 0);
                          _messageController.clear();
                        },
                        child: Icon(Icons.send)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
