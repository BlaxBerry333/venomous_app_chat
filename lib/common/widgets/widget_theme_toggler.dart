import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;
import 'package:venomous_app_chat/common/global_controllers/_index.dart'
    as global_controllers;

class ThemeToggler extends StatelessWidget {
  const ThemeToggler({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<global_controllers.ThemeController>();

    return Obx(
      () => IconButton(
        icon: Icon(
          size: 32,
          themeController.isDarkMode.value
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined,
        ),
        style: const ButtonStyle(
          iconColor:
              WidgetStatePropertyAll(app_themes.CustomThemeColors.primary),
        ),
        onPressed: () => themeController.toggleTheme(),
      ),
    );
  }
}
