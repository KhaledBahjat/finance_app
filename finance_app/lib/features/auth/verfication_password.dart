
import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
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
                        'OTP Verification',
                        style: AppStyling.primaryHeadlineTextStyle,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Enter the verification code we just sent on your email address.',
                        style: AppStyling.grey15MediumStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                PinCodeTextField(
                  controller: otpController,
                  appContext: context,
                  length: 4,
                  keyboardType: TextInputType.number,
                  textStyle: AppStyling.primaryHeadlineTextStyle.copyWith(
                    fontSize: 22.sp,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderWidth: 1,
                    activeFillColor: AppColor.primaryColor,
                    inactiveFillColor: AppColor.darkGreyColor,
                    selectedFillColor: AppColor.primaryColor,
                    inactiveColor: AppColor.blackColor,
                    errorBorderColor: AppColor.errorColor,
                    fieldHeight: 60.h,
                    fieldWidth: 70.w,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  onCompleted: (value) => GoRouter.of(
                    context,
                  ).pushNamed(AppRoutes.onBoardingScreen),
                ),
                SizedBox(
                  height: 38.h,
                ),
                PrimaryButtonWidget(
                  width: 331.w,
                  height: 56.h,
                  buttonText: 'Verify',
                  onPress: () {
                    // log(otpController.text);
                    GoRouter.of(
                      context,
                    ).pushNamed(AppRoutes.resetPasswordScreen);
                  },
                ),

                SizedBox(
                  height: 357.h,
                ),
                Center(
                  child: InkWell(
                    onTap: () => GoRouter.of(
                      context,
                    ).pushNamed(AppRoutes.resetPasswordScreen),
                    child: RichText(
                      text: TextSpan(
                        text: 'ADidn’t received code?  ',
                        style: AppStyling.black15BoldStyle.copyWith(
                          color: AppColor.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Resend',
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
    );
  }
}
