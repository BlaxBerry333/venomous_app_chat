import 'package:flutter/material.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;

class Typography extends StatelessWidget {
  final String text;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool? isEllipsis;

  const Typography.topTitle(
    this.text, {
    super.key,
    this.fontSize = 80,
    this.fontFamily = "Anton",
    this.fontWeight = FontWeight.w900,
    this.fontColor = app_themes.CustomThemeColors.primaryText,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.isEllipsis,
  });

  const Typography.title(
    this.text, {
    super.key,
    this.fontSize = 32,
    this.fontFamily,
    this.fontWeight = FontWeight.w900,
    this.fontColor = app_themes.CustomThemeColors.primaryText,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.isEllipsis,
  });

  const Typography.subtitle(
    this.text, {
    super.key,
    this.fontSize = 24,
    this.fontFamily,
    this.fontWeight = FontWeight.w500,
    this.fontColor = app_themes.CustomThemeColors.secondaryText,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.isEllipsis,
  });

  const Typography.body1(
    this.text, {
    super.key,
    this.fontSize = 16,
    this.fontFamily,
    this.fontWeight = FontWeight.normal,
    this.fontColor = app_themes.CustomThemeColors.primaryText,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.isEllipsis,
  });

  const Typography.body2(
    this.text, {
    super.key,
    this.fontSize = 8,
    this.fontFamily,
    this.fontWeight = FontWeight.normal,
    this.fontColor = app_themes.CustomThemeColors.secondaryText,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.isEllipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          app_themes.CustomThemeSizes.sizes[2],
        ),
      ),
      child: Text(
        text,
        softWrap: true,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: fontColor,
            backgroundColor: backgroundColor,
            height: 1.2,
            letterSpacing: 2,
            wordSpacing: 2,
            overflow: isEllipsis ?? false
                ? TextOverflow.ellipsis
                : TextOverflow.visible),
      ),
    );
  }
}
