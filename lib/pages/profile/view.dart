import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:venomous_app_chat/common/widgets/_index.dart' as custom_widgets;

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [custom_widgets.ThemeToggler()],
      ),
      body: custom_widgets.LayoutPageBody(
        children: [
          custom_widgets.Button(
            "Open Dialog",
            onClick: () {
              Get.defaultDialog(
                title: "Dialog",
                middleText: "This is a dialog",
              );
            },
          ),
        ],
      ),
    );
  }
}
