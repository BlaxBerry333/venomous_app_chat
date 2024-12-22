// Example
// ChatMessage.create("Hello");

import 'user_date.dart';

class ChatMessage {
  String content;
  DateTime timestamp;
  String memberId;

  ChatMessage({
    required this.content,
    required this.timestamp,
    required this.memberId,
  });

  static bool isCurrentUser(String memberId) {
    return memberId == UserData.getCurrentUser().id;
  }

  factory ChatMessage.create(String content) {
    return ChatMessage(
      content: content,
      timestamp: DateTime.now(),
      memberId: UserData.getCurrentUser().id,
    );
  }
}
