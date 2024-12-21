import 'package:flutter/material.dart';

import 'package:venomous_app_chat/configs/app_themes.dart' as app_themes;

import 'widget_typography.dart' as custom_widgets;

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final bool? isDisabled;
  final Widget? icon;
  final bool? isTrailingIcon;
  final WidgetStateProperty<OutlinedBorder?>? shape;

  const Button(
    this.text, {
    super.key,
    required this.onClick,
    this.isDisabled,
    this.icon,
    this.shape,
    this.isTrailingIcon = true,
  });

  Button.capsule(
    this.text, {
    super.key,
    required this.onClick,
    this.isDisabled = false,
    this.icon,
    this.isTrailingIcon = true,
  }) : shape = WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(app_themes.CustomThemeSizes.sizes[4]),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: isDisabled ?? false ? null : onClick,
      icon: icon,
      iconAlignment:
          isTrailingIcon ?? false ? IconAlignment.start : IconAlignment.end,
      label: custom_widgets.Typography.body1(
        text,
        fontWeight: FontWeight.bold,
        fontColor: Colors.white,
      ),
      style: ButtonStyle(
        shape: shape,
      ),
    );
  }
}
