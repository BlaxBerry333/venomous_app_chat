import 'package:flutter/material.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;

class LayoutPageBody extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;
  final double? height;
  final double? width;
  final String? backgroundImageAssetPath;

  const LayoutPageBody({
    super.key,
    required this.children,
    this.padding,
    this.height = double.infinity,
    this.width = double.infinity,
    this.backgroundImageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        height: height ?? screenHeight,
        width: width ?? screenWidth,
        padding:
            padding ?? EdgeInsets.all(app_themes.CustomThemeSizes.sizes[1]),
        decoration: BoxDecoration(
          image: backgroundImageAssetPath == null
              ? null
              : DecorationImage(
                  image: AssetImage(backgroundImageAssetPath!),
                  fit: BoxFit.cover,
                ),
        ),
        child: Column(children: children),
      ),
    );
  }
}
