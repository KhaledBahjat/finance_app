import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitel extends StatelessWidget {
  const CustomTitel({
    super.key,
    required this.title,
    required this.backIconPath,
    required this.leadingIconPath,
  });
final String title;
final String backIconPath;
final String leadingIconPath;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackButtonWidget(
          iconPath: backIconPath,
          width: 24.w,
          height: 24.h,
          onPressed: () {},
        ),
        Text(
          title,
          style: AppStyling.grey14SemiBoldStyle.copyWith(
            color: Colors.black,
            fontSize: 18.sp,
          ),
        ),
        BackButtonWidget(
          iconPath: leadingIconPath,
          onPressed: () {},
          width: 24.w,
          height: 24.h,
        ),
      ],
    );
  }
}
