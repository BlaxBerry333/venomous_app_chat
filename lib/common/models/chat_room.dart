import 'chat_message.dart';
import 'user_date.dart';

class ChatRoom {
  final String id;
  final String name;
  final UserData member;
  final List<ChatMessage> messages;

  ChatRoom({
    required this.id,
    required this.name,
    required this.member,
    required this.messages,
  });
}
