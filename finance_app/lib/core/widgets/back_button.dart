import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BackButtonWidget extends StatelessWidget {
  BackButtonWidget({
    super.key,
    required this.iconPath,
    this.width,
    this.height,
    required this.onPressed,
  });
  final String iconPath;
  double? width;
  double? height;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 41.w,
        height: 41.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: const Color(0xffE8ECF4),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Align(
          child: Center(
            child: IconButton(
              onPressed: onPressed,
              icon: SvgPicture.asset(
                iconPath,
                width: width ?? 8.5.w,
                height: height ?? 14.86.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
