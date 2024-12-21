import 'package:flutter/material.dart';

import 'package:venomous_app_chat/configs/app_info.dart' as app_info;
import 'package:venomous_app_chat/common/widgets/_index.dart' as custom_widgets;
import 'package:venomous_app_chat/pages/chat/_index.dart' as chat_page;

const String _homePageMainTitle = app_info.AppInfo.appName;
const String _homePageSubTitle = "xxxxxxxxxxxxxx";

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  Future<void> _handleClickStartButton() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return const chat_page.ChatPageView();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: custom_widgets.LayoutPageBody(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        children: [
          const Spacer(flex: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const custom_widgets.Typography.topTitle(_homePageMainTitle),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: custom_widgets.Typography.subtitle(_homePageSubTitle),
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
