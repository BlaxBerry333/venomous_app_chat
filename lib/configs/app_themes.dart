import 'package:flutter/material.dart';

class CustomThemeSizes {
  static const List<double> sizes = [0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80];

  CustomThemeSizes._();
}

class CustomThemeColors {
  static const Color primary = Color(0xFF478EBD);
  static const Color disabled = Color(0xFFA9A9A9);
  static const Color error = Color(0xC8E53835);

  static const Color primaryText = Color(0xFF272739);
  static const Color secondaryText = Color(0xFF818181);

  static const Color lightBackground = Color(0xfff2f2f2);
  static const Color darkBackground = Color(0xFF272739);

  CustomThemeColors._();
}

class CustomThemeData {
  CustomThemeData._();

  static ThemeData getTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: CustomThemeColors.primary,

      // --------------------------------------------------------------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: CustomThemeColors.lightBackground,
        foregroundColor: CustomThemeColors.primaryText,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: CustomThemeColors.primaryText,
          fontSize: CustomThemeSizes.sizes[3],
          fontWeight: FontWeight.bold,
        ),
      ),

      // --------------------------------------------------------------------------------
      scaffoldBackgroundColor: CustomThemeColors.lightBackground,

      // --------------------------------------------------------------------------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: CustomThemeColors.primary,
            foregroundColor: Colors.white,
            disabledBackgroundColor: CustomThemeColors.disabled,
            disabledForegroundColor: CustomThemeColors.primaryText,
            textStyle: TextStyle(
              fontSize: CustomThemeSizes.sizes[2],
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(
              vertical: CustomThemeSizes.sizes[3],
              horizontal: CustomThemeSizes.sizes[5],
            )),
      ),

      // --------------------------------------------------------------------------------
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: CustomThemeColors.lightBackground,
        hintStyle: TextStyle(color: CustomThemeColors.secondaryText),
        labelStyle: TextStyle(color: CustomThemeColors.primaryText),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomThemeColors.primary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomThemeColors.primary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomThemeColors.error, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomThemeColors.error, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
