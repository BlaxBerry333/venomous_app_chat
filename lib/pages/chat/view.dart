import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;
import 'package:venomous_app_chat/router/app_router.dart' as app_router;
import 'package:venomous_app_chat/common/models/_index.dart' as custom_models;
import 'package:venomous_app_chat/common/widgets/_index.dart' as custom_widgets;
import 'package:venomous_app_chat/__mock__/chat_data.dart' as mock_data;

class ChatPageView extends StatefulWidget {
  const ChatPageView({super.key});

  @override
  State<ChatPageView> createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  static String _memberName = "";
  static List<custom_models.ChatMessage> _chatMessageList = [];

  final TextEditingController _controllerMessage = TextEditingController(
    text: "",
  );

  void _handleClickSendButton(String value) {
    setState(() {
      if (value.isEmpty) return;
      _chatMessageList.add(
        custom_models.ChatMessage.create(_controllerMessage.text),
      );
      _controllerMessage.text = "";
    });
  }

  @override
  void initState() {
    super.initState();

    final String roomId = Get.parameters['roomId'] ?? '';

    if (roomId.isEmpty) {
      Future.delayed(Duration.zero, () {
        Get.toNamed(app_router.PathName.chatRooms);
      });
      return;
    }

    final custom_models.ChatRoom? chatRoom = mock_data.mockChatRoomList
        .firstWhereOrNull((chatRoom) => chatRoom.id == roomId);

    if (chatRoom == null) {
      Future.delayed(Duration.zero, () {
        Get.toNamed(app_router.PathName.chatRooms);
      });
      return;
    }

    setState(() {
      _memberName = chatRoom.member.name;
      _chatMessageList = chatRoom.messages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_memberName),
        centerTitle: true,
        actions: const [custom_widgets.ThemeToggler()],
      ),
      body: custom_widgets.LayoutPageBody(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: _chatMessageList.length,
                    (BuildContext context, int index) {
                      custom_models.ChatMessage chatMessage =
                          _chatMessageList[index];
                      return Wrap(
                        alignment: custom_models.ChatMessage.isCurrentUser(
                                chatMessage.memberId)
                            ? WrapAlignment.end
                            : WrapAlignment.start,
                        children: [
                          custom_widgets.Typography.body1(
                            chatMessage.content.toString(),
                            padding: EdgeInsets.symmetric(
                              vertical: app_themes.CustomThemeSizes.sizes[2],
                              horizontal: app_themes.CustomThemeSizes.sizes[4],
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: app_themes.CustomThemeSizes.sizes[1],
                              horizontal: app_themes.CustomThemeSizes.sizes[2],
                            ),
                            fontColor: Colors.white,
                            backgroundColor:
                                custom_models.ChatMessage.isCurrentUser(
                                        chatMessage.memberId)
                                    ? app_themes.CustomThemeColors.primary
                                    : app_themes.CustomThemeColors.disabled,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          TextField(
              controller: _controllerMessage,
              autofocus: true,
              decoration: InputDecoration(
                label: null,
                hintText: "请输入信息...",
                suffix: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.image_outlined,
                    size: app_themes.CustomThemeSizes.sizes[4],
                  ),
                ),
              ),
              onSubmitted: _handleClickSendButton)
        ],
      ),
    );
  }
}
