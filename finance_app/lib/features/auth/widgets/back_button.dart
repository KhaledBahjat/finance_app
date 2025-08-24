import 'package:finance_app/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButtonWidgt extends StatelessWidget {
  const BackButtonWidgt({super.key});

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
            color: Color(0xffE8ECF4),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Align(
          child: Center(
            child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Image.asset(
                AppAssets.arrowBack,
                width: 8.5.w,
                height: 14.86.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
