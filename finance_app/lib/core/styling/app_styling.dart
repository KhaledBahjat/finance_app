import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyling {
  static TextStyle primaryHeadlineTextStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );
  static TextStyle subtitleTextStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.secondaryColor,
  );
  static TextStyle black16w600Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
  );
  static TextStyle grey12MediumStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.greyColor,
  );
  static TextStyle grey15MediumStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.secondaryColor,
  );
  static TextStyle black15BoldStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: AppColor.blackColor,
  );
  static TextStyle grey14SemiBoldStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.darkGreyColor,
  );
  static TextStyle errorTextStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.errorColor,
  );
  
}
