import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;
import 'package:venomous_app_chat/configs/app_info.dart' as app_info;
import 'package:venomous_app_chat/router/app_router.dart' as app_router;
import 'package:venomous_app_chat/common/widgets/_index.dart' as custom_widgets;

const String _homePageMainTitle = app_info.AppInfo.appName;
const String _homePageSubTitle = "xxxxxxxxxxxxxx";

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  Future<void> _handleClickStartButton() async {
    Get.toNamed(app_router.PathName.chatRooms);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [custom_widgets.ThemeToggler()],
      ),
      body: custom_widgets.LayoutPageBody(
        padding: EdgeInsets.symmetric(
          horizontal: app_themes.CustomThemeSizes.sizes[5],
        ),
        children: [
          const Spacer(flex: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const custom_widgets.Typography.topTitle(_homePageMainTitle),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: app_themes.CustomThemeSizes.sizes[5],
                ),
                child:
                    const custom_widgets.Typography.subtitle(_homePageSubTitle),
              ),
              custom_widgets.Button.capsule(
                "Let's Chat",
                icon: const Icon(Icons.arrow_forward),
                isTrailingIcon: false,
                onClick: _handleClickStartButton,
              ),
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
