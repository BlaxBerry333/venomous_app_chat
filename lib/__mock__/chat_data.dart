import 'package:venomous_app_chat/common/models/_index.dart' as custom_models;

import 'user_data.dart';

final List<custom_models.ChatRoom> mockChatRoomList = [
  custom_models.ChatRoom(
    id: "ROOM_1111",
    name: "Room 1",
    member: mockUser2,
    messages: [
      custom_models.ChatMessage(
        content: "AAA",
        timestamp: DateTime.now(),
        memberId: mockUser2.id,
      ),
      custom_models.ChatMessage(
        content: "BBB",
        timestamp: DateTime.now(),
        memberId: mockUser2.id,
      ),
      custom_models.ChatMessage(
        content: "CCC",
        timestamp: DateTime.now(),
        memberId: mockCurrentUser.id,
      ),
      custom_models.ChatMessage(
        content: "DDD",
        timestamp: DateTime.now(),
        memberId: mockUser2.id,
      ),
    ],
  ),
  custom_models.ChatRoom(
    id: "ROOM_222",
    name: "Room 2",
    member: mockUser3,
    messages: <custom_models.ChatMessage>[
      custom_models.ChatMessage(
        content: "XXXXXXXXX",
        timestamp: DateTime.now(),
        memberId: mockCurrentUser.id,
      ),
    ],
  ),
  custom_models.ChatRoom(
    id: "ROOM_333",
    name: "Room 3",
    member: mockUser4,
    messages: <custom_models.ChatMessage>[
      custom_models.ChatMessage(
        content: "XXXXXXXXX",
        timestamp: DateTime.now(),
        memberId: mockUser4.id,
      ),
      custom_models.ChatMessage(
        content: "YYYYYYY",
        timestamp: DateTime.now(),
        memberId: mockUser4.id,
      ),
    ],
  ),
];
