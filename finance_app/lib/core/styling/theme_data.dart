import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.whiteColor,
    fontFamily: AppFonts.mainFontName,
    textTheme: TextTheme(
      titleLarge: AppStyling.primaryHeadlineTextStyle,
      titleMedium: AppStyling.subtitleTextStyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.primaryColor,
      disabledColor: AppColor.secondaryColor,
    ),
  );
}
