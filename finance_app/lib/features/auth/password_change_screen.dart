import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChangeScreen extends StatelessWidget {
  const PasswordChangeScreen({super.key});
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 248.h,
                ),
                Image.asset(
                  AppAssets.successIcon,
                  width: 100.w,
                  height: 100.h,
                ),
                SizedBox(
                  height: 35.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: Column(
                    children: [
                      Text(
                        'Password Changed!',
                        style: AppStyling.primaryHeadlineTextStyle,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Your password has been changed successfully.',
                        textAlign: TextAlign.center,
                        style: AppStyling.grey15MediumStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                PrimaryButtonWidget(
                  buttonText: 'Back to Login',
                  onPress: () {
                    GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
