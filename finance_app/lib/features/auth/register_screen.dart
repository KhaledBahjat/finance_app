import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:finance_app/features/auth/widgets/or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_media_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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

                  BackButtonWidget(iconPath: AppAssets.arrowBack, onPressed: () {
                    Navigator.of(context).pop();
                  }),

                  SizedBox(height: 28.h),

                  SizedBox(
                    width: 331.w,
                    child: Text(
                      'Hello! Register to get started',
                      style: AppStyling.primaryHeadlineTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomTextfield(
                    height: 80.h,
                    controller: usernameController,
                    hintText: 'Username',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextfield(
                    height: 80.h,
                    hintText: 'Email',
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextfield(
                    height: 80.h,
                    hintText: 'Password',
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
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
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  PrimaryButtonWidget(
                    width: 331.w,
                    height: 56.h,
                    buttonText: 'Register',
                    onPress: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  const OrLoginWidget(),
                  SizedBox(
                    height: 22.h,
                  ),
                  const SocialMediaIcons(),
                  SizedBox(
                    height: 155.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () =>
                          GoRouter.of(context).pushNamed(AppRoutes.loginScreen),
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: AppStyling.black15BoldStyle.copyWith(
                            color: AppColor.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login Now',
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
