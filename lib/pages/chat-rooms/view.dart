import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;
import 'package:venomous_app_chat/router/app_router.dart' as app_router;
import 'package:venomous_app_chat/common/models/_index.dart' as custom_models;
import 'package:venomous_app_chat/common/widgets/_index.dart' as custom_widgets;
import 'package:venomous_app_chat/__mock__/chat_data.dart' as mock_data;

class ChatRoomsPageView extends StatelessWidget {
  const ChatRoomsPageView({super.key});

  void _handleClickSpecificChatRoom(custom_models.ChatRoom chatRoom) {
    Get.toNamed('${app_router.PathName.chat}?roomId=${chatRoom.id}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Rooms'),
        actions: const [custom_widgets.ThemeToggler()],
      ),
      body: custom_widgets.LayoutPageBody(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: mock_data.mockChatRoomList.length,
                    (BuildContext context, int index) {
                      custom_models.ChatRoom chatRoom =
                          mock_data.mockChatRoomList[index];
                      return InkWell(
                        onTap: () => _handleClickSpecificChatRoom(chatRoom),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: app_themes.CustomThemeSizes.sizes[1],
                            horizontal: app_themes.CustomThemeSizes.sizes[2],
                          ),
                          child: Row(
                            children: [
                              custom_widgets.Picture.network(
                                chatRoom.member.avatarUrl,
                                height: app_themes.CustomThemeSizes.sizes[10],
                                width: app_themes.CustomThemeSizes.sizes[10],
                              ),
                              SizedBox(
                                width: app_themes.CustomThemeSizes.sizes[2],
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    custom_widgets.Typography.body1(
                                      chatRoom.member.name,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height:
                                          app_themes.CustomThemeSizes.sizes[1],
                                    ),
                                    custom_widgets.Typography.body2(
                                      chatRoom.member.name,
                                      isEllipsis: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
