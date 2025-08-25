import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outline_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoardingImage1,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 21.h),
          PrimaryButtonWidget(
            width: 331.w,
            height: 56.h,
            buttonText: 'Login',
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          PrimaryOutlineButtonWidget(
            width: 331.w,
            height: 56.h,
            buttonText: 'Register',
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
          ),
          SizedBox(
            height: 46.h,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Continue as a guest',
              style: AppStyling.black15BoldStyle.copyWith(
                color: AppColor.boldColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
