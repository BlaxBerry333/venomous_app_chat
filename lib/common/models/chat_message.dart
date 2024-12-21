// Example
// ChatMessage.create("Hello");

import 'user_date.dart';

class ChatMessage {
  String content;
  DateTime timestamp;
  String userId;

  ChatMessage({
    required this.content,
    required this.timestamp,
    required this.userId,
  });

  static bool isCurrentUser(String userId) {
    return userId == UserData.getCurrentUser().id;
  }

  factory ChatMessage.create(String content) {
    return ChatMessage(
      content: content,
      timestamp: DateTime.now(),
      userId: UserData.getCurrentUser().id,
    );
  }
}
