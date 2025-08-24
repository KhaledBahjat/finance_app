import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.width,
    this.height,
    this.isPassword,
    this.controller,
    this.validator,
  });
  final String? hintText;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: EdgeInsets.all(8),
      width: width ?? 331.w,
      height: height ?? 56.h,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isPassword ?? false,
        autofocus: false,
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColor.borderColor,
              width: 2.h,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColor.primaryColor,
              width: 2.h,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.h,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.h,
            ),
          ),

          hintText: hintText ?? 'Login',
          hintStyle: AppStyling.grey15MediumStyle,
          filled: true,
          fillColor: AppColor.fillColor,
        ),
      ),
    );
  }
}
