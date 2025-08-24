import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button.dart';
import 'package:finance_app/features/auth/widgets/or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_media_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscured = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),

                  BackButtonWidgt(),

                  SizedBox(height: 28.h),

                  SizedBox(
                    width: 280.w,
                    child: Text(
                      'Welcome back! \nAgain!',
                      style: AppStyling.primaryHeadlineTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomTextfield(
                    hintText: 'Enter your email',
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    controller: passwordController,
                    hintText: 'Enter your password',
                    isPassword: isObscured,
                    suffixIcon: IconButton(
                      onPressed: () => setState(() {
                        isObscured = !isObscured;
                      }),
                      icon: isObscured
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: AppStyling.black15BoldStyle.copyWith(
                        color: AppColor.darkGreyColor,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30.h,
                  ),
                  PrimaryButtonWidget(
                    width: 331.w,
                    height: 56.h,
                    buttonText: 'Login',
                    onPress: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  OrLoginWidget(),
                  SizedBox(
                    height: 22.h,
                  ),
                  SocialMediaIcons(),
                  SizedBox(
                    height: 155.h,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t have an account?',
                        style: AppStyling.black15BoldStyle.copyWith(
                          color: AppColor.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Register Now',
                            style: AppStyling.black15BoldStyle,
                          ),
                        ],
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
