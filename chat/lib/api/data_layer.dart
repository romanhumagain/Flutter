import 'package:chat/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataLayer {
  // function to get conversations and return them as string
  static Future<List<ConversationModel>?> getConversations() async {
    CollectionReference conversations =
        FirebaseFirestore.instance.collection('CONVERSATIONS');
    List<ConversationModel> conversationList = [];

    try {
      QuerySnapshot querySnapshot = await conversations.get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs) {
          conversationList.add(ConversationModel.fromFirestore(
              doc.data() as Map<String, dynamic>));
        }
        return conversationList;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
