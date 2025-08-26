import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),

                   BackButtonWidget(iconPath: AppAssets.arrowBack, onPressed: () {
                     Navigator.of(context).pop();
                   }),

                  SizedBox(height: 28.h),

                  SizedBox(
                    width: 331.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: AppStyling.primaryHeadlineTextStyle,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                          style: AppStyling.grey15MediumStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomTextfield(
                    height: 80.h,
                    hintText: 'Enter your email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),

                  SizedBox(
                    height: 38.h,
                  ),
                  PrimaryButtonWidget(
                    width: 331.w,
                    height: 56.h,
                    buttonText: 'Send Code',
                    onPress: () => GoRouter.of(
                      context,
                    ).pushNamed(AppRoutes.verificationScreen),
                  ),

                  SizedBox(
                    height: 361.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () =>
                          GoRouter.of(context).pushNamed(AppRoutes.loginScreen),
                      child: RichText(
                        text: TextSpan(
                          text: 'Remember Password? ',
                          style: AppStyling.black15BoldStyle.copyWith(
                            color: AppColor.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: AppStyling.black15BoldStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
