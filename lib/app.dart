import 'package:flutter/material.dart';

import 'package:venomous_app_chat/configs/app_info.dart' as app_info;
import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;
import 'package:venomous_app_chat/pages/home/_index.dart' as home_page;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_info.AppInfo.appName,
      theme: app_themes.CustomThemeData.getTheme(),
      home: const home_page.HomePageView(),
    );
  }
}
