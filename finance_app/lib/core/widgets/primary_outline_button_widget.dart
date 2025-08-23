import 'package:finance_app/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlineButtonWidget extends StatelessWidget {
  const PrimaryOutlineButtonWidget({
    super.key,
    this.buttonText,
    this.borderColor,
    this.width,
    this.height,
    this.borderRadius,
    this.textColor,
    this.onPress,
    this.fontSize,
  });
  final String? buttonText;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: borderColor ?? AppColor.primaryColor,
          width: 2.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? 8.r,
          ),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),

      onPressed: onPress,

      child: Text(
        
        buttonText ?? 'Button',
        style: TextStyle(
          color: textColor ?? AppColor.primaryColor,
          fontSize: fontSize ?? 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
