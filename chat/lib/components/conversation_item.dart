import 'package:chat/models/chat_model.dart'; // Import the model
import 'package:chat/pages/chat_display.dart';
import 'package:flutter/material.dart';

class ConversationItem extends StatelessWidget {
  final ConversationModel conversation;

  const ConversationItem({super.key, required this.conversation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatDisplay()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display the conversation names dynamically
                    Text(
                      "${conversation.name1} & ${conversation.name2}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    // Show a status or placeholder if needed
                    Text(
                      "3 unread conversations",
                      // Replace this if you have unread data
                      style: TextStyle(fontSize: 15, color: Colors.pink),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
      ),
    );
  }
}
