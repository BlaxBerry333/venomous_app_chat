import 'package:get/get.dart';
import 'package:venomous_app_chat/pages/chat-rooms/_index.dart'
    as chat_rooms_page;
import 'package:venomous_app_chat/pages/chat/_index.dart' as chat_page;
import 'package:venomous_app_chat/pages/home/_index.dart' as home_page;
import 'package:venomous_app_chat/pages/profile/view.dart' as profile_page;

class PathName {
  static const String home = "/";
  static const String chat = "/chat";
  static const String chatRooms = "/chat-rooms";
  static const String profile = "/profile";

  PathName._();
}

class Routes {
  static final List<GetPage> pages = [
    // home
    GetPage(
      name: PathName.home,
      page: () => const home_page.HomePageView(),
    ),

    // chat
    GetPage(
      name: PathName.chat,
      page: () => const chat_page.ChatPageView(),
    ),

    // chat rooms
    GetPage(
      name: PathName.chatRooms,
      page: () => const chat_rooms_page.ChatRoomsPageView(),
    ),

    // profile
    GetPage(
      name: PathName.profile,
      page: () => const profile_page.ProfilePageView(),
    )
  ];

  Routes._();
}
