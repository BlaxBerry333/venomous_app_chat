import 'package:flutter/material.dart';

import 'package:venomous_app_chat/__mock__/user_data.dart' as custom_mock_data;
import 'package:venomous_app_chat/common/models/_index.dart' as custom_models;
import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;
import 'package:venomous_app_chat/common/widgets/_index.dart' as custom_widgets;

class ChatPageView extends StatefulWidget {
  const ChatPageView({super.key});

  @override
  State<ChatPageView> createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  final TextEditingController _controllerMessage = TextEditingController(
    text: "",
  );

  void _handleClickSendButton(String value) {
    setState(() {
      if (value.isEmpty) return;
      custom_mock_data.mockChatMessageList.add(
        custom_models.ChatMessage.create(_controllerMessage.text),
      );
      _controllerMessage.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: custom_widgets.LayoutPageBody(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: custom_mock_data.mockChatMessageList.length,
                    (BuildContext context, int index) => Wrap(
                      alignment: custom_models.ChatMessage.isCurrentUser(
                              custom_mock_data
                                  .mockChatMessageList[index].userId)
                          ? WrapAlignment.end
                          : WrapAlignment.start,
                      children: [
                        custom_widgets.Typography.body1(
                          custom_mock_data.mockChatMessageList[index].content
                              .toString(),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          fontColor: Colors.white,
                          backgroundColor:
                              custom_models.ChatMessage.isCurrentUser(
                                      custom_mock_data
                                          .mockChatMessageList[index].userId)
                                  ? app_themes.CustomThemeColors.primary
                                  : app_themes.CustomThemeColors.primaryText,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextField(
              controller: _controllerMessage,
              autofocus: true,
              decoration: const InputDecoration(
                label: null,
                hintText: "请输入信息...",
                suffix: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.image_outlined, size: 32),
                ),
              ),
              onSubmitted: _handleClickSendButton)
        ],
      ),
    );
  }
}
