import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitel extends StatelessWidget {
  const CustomTitel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackButtonWidget(
          iconPath: AppAssets.arrowBackBlack,
          width: 24.w,
          height: 24.h,
          onPressed: () {},
        ),
        Text(
          'All Cards',
          style: AppStyling.grey14SemiBoldStyle.copyWith(
            color: Colors.black,
            fontSize: 18.sp,
          ),
        ),
        BackButtonWidget(
          iconPath: AppAssets.listIcon,
          onPressed: () {},
          width: 24.w,
          height: 24.h,
        ),
      ],
    );
  }
}
