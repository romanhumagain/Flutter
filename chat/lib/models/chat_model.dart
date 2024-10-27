class ConversationModel {
  final String id;
  final String name1;
  final String name2;
  final String userId1;
  final String userId2;
  final String? datetime;

  ConversationModel(
      {required this.id,
      required this.name1,
      required this.name2,
      required this.userId1,
      required this.userId2,
      required this.datetime});

  // Factory method to create a ConversationModel from Firestore data
  factory ConversationModel.fromFirestore(Map<String, dynamic> data) {
    return ConversationModel(
        id: data['id'] ?? '',
        name1: data['name1'] ?? '',
        name2: data['name2'] ?? '',
        userId1: data['userId1'] ?? '',
        userId2: data['userId2'] ?? '',
        datetime: data['datetime'] ?? '');
  }
}
