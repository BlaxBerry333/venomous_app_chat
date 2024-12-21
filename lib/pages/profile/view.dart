import 'package:flutter/material.dart';

import 'package:venomous_app_chat/common/widgets/_index.dart' as custom_widgets;

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const custom_widgets.LayoutPageBody(
        children: [
          custom_widgets.Typography.body1('Profile'),
        ],
      ),
    );
  }
}
