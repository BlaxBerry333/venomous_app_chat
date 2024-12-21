import 'package:venomous_app_chat/common/models/_index.dart' as custom_models;

import 'chat_data.dart';

final List<custom_models.ChatMessage> mockChatMessageList = [
  custom_models.ChatMessage(
    content: "AAA",
    timestamp: DateTime.now(),
    userId: mockCurrentUser.id,
  ),
  custom_models.ChatMessage(
    content: "BBB",
    timestamp: DateTime.now(),
    userId: mockUser2.id,
  ),
  custom_models.ChatMessage(
    content: "CCC",
    timestamp: DateTime.now(),
    userId: mockCurrentUser.id,
  ),
  custom_models.ChatMessage(
    content: "DDD",
    timestamp: DateTime.now(),
    userId: mockUser2.id,
  ),
];
