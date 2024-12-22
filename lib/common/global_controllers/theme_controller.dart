import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;

class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(isDarkMode.value
        ? app_themes.CustomThemeData.darkTheme()
        : app_themes.CustomThemeData.lightTheme());
  }

  ThemeData get currentTheme {
    return isDarkMode.value
        ? app_themes.CustomThemeData.darkTheme()
        : app_themes.CustomThemeData.lightTheme();
  }
}
