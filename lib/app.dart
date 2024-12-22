import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:venomous_app_chat/configs/app_info.dart' as app_info;
import 'package:venomous_app_chat/router/app_router.dart' as app_router;
import 'package:venomous_app_chat/common/global_controllers/_index.dart'
    as global_controllers;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<global_controllers.ThemeController>();

    return GetMaterialApp(
      title: app_info.AppInfo.appName,
      theme: themeController.currentTheme,
      getPages: app_router.Routes.pages,
      initialRoute: app_router.PathName.home,
      defaultTransition: Transition.fadeIn,
    );
  }
}
