import 'package:flutter/material.dart';

class CustomThemeSizes {
  static const List<double> sizes = [0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80];

  CustomThemeSizes._();
}

class CustomThemeColors {
  static const Color primary = Color(0xFF478EBD);
  static const Color disabled = Color(0xFF7B7B7B);
  static const Color error = Color(0xC8E53835);

  static const Color primaryText = Color(0xFF272739);
  static const Color secondaryText = Color(0xFF818181);

  static const Color lightBackground = Color(0xfff2f2f2);
  static const Color darkBackground = Color(0xFF272739);

  CustomThemeColors._();
}

class CustomThemeData {
  CustomThemeData._();

  static ThemeData _buildTheme({
    required Color scaffoldBackgroundColor,
    required Color appBarBackgroundColor,
    required Color appBarForegroundColor,
    required Color textColor,
    required Color inputDecorationFillColor,
    required Color inputDecorationBorderColor,
  }) {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: CustomThemeColors.primary,

      // --------------------------------------------------------------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: appBarBackgroundColor,
        foregroundColor: appBarForegroundColor,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: textColor,
          fontSize: CustomThemeSizes.sizes[3],
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: textColor,
        ),
      ),

      // --------------------------------------------------------------------------------
      scaffoldBackgroundColor: scaffoldBackgroundColor,

      // --------------------------------------------------------------------------------
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor),
        bodySmall: TextStyle(color: textColor),
        headlineLarge: TextStyle(color: textColor),
        headlineMedium: TextStyle(color: textColor),
        headlineSmall: TextStyle(color: textColor),
      ),

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
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: inputDecorationFillColor,
        hintStyle: const TextStyle(color: CustomThemeColors.secondaryText),
        labelStyle: const TextStyle(color: CustomThemeColors.primaryText),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: inputDecorationBorderColor, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: inputDecorationBorderColor, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: CustomThemeColors.error, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: CustomThemeColors.error, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }

  static ThemeData lightTheme() {
    return _buildTheme(
      scaffoldBackgroundColor: CustomThemeColors.lightBackground,
      appBarBackgroundColor: CustomThemeColors.lightBackground,
      appBarForegroundColor: CustomThemeColors.primaryText,
      textColor: CustomThemeColors.primaryText,
      inputDecorationFillColor: CustomThemeColors.lightBackground,
      inputDecorationBorderColor: CustomThemeColors.primary,
    );
  }

  static ThemeData darkTheme() {
    return _buildTheme(
      scaffoldBackgroundColor: CustomThemeColors.darkBackground,
      appBarBackgroundColor: CustomThemeColors.darkBackground,
      appBarForegroundColor: CustomThemeColors.primaryText,
      textColor: Colors.white,
      inputDecorationFillColor: CustomThemeColors.darkBackground,
      inputDecorationBorderColor: CustomThemeColors.primary,
    );
  }
}
