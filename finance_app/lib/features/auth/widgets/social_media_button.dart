import 'package:finance_app/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    this.onTap,
    required this.iconPath,
  });
  final void Function()? onTap;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 105.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Color(0xffE8ECF4),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Align(
          child: Center(
            child: SvgPicture.asset(
              iconPath,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
      ),
    );
  }
}
