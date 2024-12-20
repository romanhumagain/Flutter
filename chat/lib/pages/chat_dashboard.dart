import 'package:chat/api/data_layer.dart';
import 'package:chat/components/conversation_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatDashboard extends StatefulWidget {
  const ChatDashboard({super.key});

  @override
  State<ChatDashboard> createState() => _ChatDashboardState();
}

class _ChatDashboardState extends State<ChatDashboard> {
  Future<void> addConversation() async {
    CollectionReference conversations =
        FirebaseFirestore.instance.collection('CONVERSATIONS');
    try {
      await conversations.add({
        'name1': "BOT" + DateTime.now().day.toString(),
        'name2': "BOT" + DateTime.now().day.toString(),
        'userId1': "1",
        'userId2': "2",
        'datetime': DateTime.now().toIso8601String(),
      });
      print("Conversation added successfully!");
    } catch (e) {
      print("Failed to add conversation: $e");
    }
  }

  late Future<List<ConversationModel>?> futureConversationData;

  @override
  void initState() {
    super.initState();
    // Fetch the conversation data from the DataLayer
    futureConversationData = DataLayer.getConversations();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.pink.shade400, Colors.purple]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 15),
                      child: Icon(
                        Icons.chat_bubble_outline,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(Icons.person, size: 35, color: Colors.black54),
                  const Icon(Icons.phone_android_outlined,
                      size: 33, color: Colors.black54)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 33, vertical: 5),
              child: Text(
                "Conversations",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Container(
                height: size.height / 1.5,
                // color: Colors.red,
                child: FutureBuilder(
                  future: futureConversationData,
                  builder: (context, AsyncSnapshot<dynamic> snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return Container();
                      case ConnectionState.active:
                      case ConnectionState.waiting:
                        return const Center(child: CircularProgressIndicator());
                      case ConnectionState.done:
                        if (snapshot.hasError) {
                          return Container(
                            height: size.height / 1.2,
                            width: size.width,
                            child: Center(
                              child: Text("Failed to load conversations!"),
                            ),
                          );
                        }
                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return Container(
                            height: size.height / 1.2,
                            width: size.width,
                            child: Center(
                              child: Text("No data Available!"),
                            ),
                          );
                        }
                        List<ConversationModel> data = snapshot.data;
                        return Container(
                          width: size.width,
                          height: size.height,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return ConversationItem(
                                  conversation: data[index]);
                            },
                          ),
                        );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
