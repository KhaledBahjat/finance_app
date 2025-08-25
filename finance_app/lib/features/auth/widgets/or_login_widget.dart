import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrLoginWidget extends StatelessWidget {
  const OrLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100.w,
          child: const Divider(),
        ),
        SizedBox(
          width: 12.w,
        ),
        Text(
          'Or Login with',
          style: AppStyling.grey14SemiBoldStyle.copyWith(
            color: AppColor.darkGreyColor,
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        SizedBox(
          width: 100.w,
          child: const Divider(),
        ),
      ],
    );
  }
}
