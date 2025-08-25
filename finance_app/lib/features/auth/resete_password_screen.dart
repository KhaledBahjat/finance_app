import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
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

                  const BackButtonWidgt(),

                  SizedBox(height: 28.h),

                  SizedBox(
                    width: 331.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create new password',
                          style: AppStyling.primaryHeadlineTextStyle,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Your new password must be unique from those previously used.',
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
                    hintText: 'New Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your new password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextfield(
                    height: 80.h,
                    hintText: 'Confirm Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
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
                    buttonText: 'Reset Password',
                    onPress: () =>
                        GoRouter.of(context).pushNamed(AppRoutes.passwordChangeScreen),
                  ),

                  SizedBox(
                    height: 337.h,
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
