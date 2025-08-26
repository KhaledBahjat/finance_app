import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/features/main_screen/widgets/carousel_widget.dart';
import 'package:finance_app/features/main_screen/widgets/notfication_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(
              height: 18.h,
            ),

            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    height: 48.h,
                    width: 48.w,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 11.w,
                ),

               
               
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: AppStyling.grey15MediumStyle,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'NoSt0n',
                      style: AppStyling.black16w600Style.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              
                Spacer(),
               
                TopProfileNotifcationWidget(),
             
              ],
            ),
           
            SizedBox(
              height: 24.h,
            ),
           
            CarouselWidget(),
            
          ],
        ),
      ),
    );
  }
}
