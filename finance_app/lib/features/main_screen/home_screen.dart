import 'package:finance_app/core/widgets/profile_picture_widget.dart';
import 'package:finance_app/features/main_screen/widgets/carousel_widget.dart';
import 'package:finance_app/features/main_screen/widgets/notfication_widget.dart';
import 'package:finance_app/features/main_screen/widgets/our_service_widget.dart';
import 'package:finance_app/features/main_screen/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),

              Row(
                children: [
                  ProfialPic(),
                  SizedBox(
                    width: 11.w,
                  ),

                  UserInfo(),

                  Spacer(),

                  TopProfileNotifcationWidget(),
                ],
              ),

              SizedBox(
                height: 24.h,
              ),
              CarouselWidget(),
              SizedBox(
                height: 24.h,
              ),

              OurService(),
            ],
          ),
        ),
      ),
    );
  }
}

