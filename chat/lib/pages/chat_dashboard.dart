import 'package:chat/components/conversation_item.dart';
import 'package:flutter/material.dart';

class ChatDashboard extends StatelessWidget {
  const ChatDashboard({super.key});

  @override
  Widget build(BuildContext context) {
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
                    decoration :BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.pink.shade400, Colors.purple]),
                      borderRadius: BorderRadius.circular(20)
                      
                    ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                        child: Icon(Icons.chat_bubble_outline, size: 28,color: Colors.white,),
                      )
                    
                  ),
                  const Icon(Icons.person, size: 35,color: Colors.black54),
                  const Icon(Icons.phone_android_outlined, size: 33,color: Colors.black54)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 33, vertical: 5),
              child: Text("Conversations", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 30,),

            Container(
              height:  500,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ConversationItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
