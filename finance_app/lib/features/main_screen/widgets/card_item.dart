import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.backgroundColor, required this.cardType});
  final Color backgroundColor;
  final String cardType;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0.h,
          child: Image.asset(
            AppAssets.layer1,
            width: 100.w,
            height: 130.h,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 100.w,
            height: 130.h,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0.h,
          child: Image.asset(
            AppAssets.layer2,
            width: 207.w,
            height: 200.h,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer2,
            width: 207.w,
            height: 200.h,
          ),
        ),

        Positioned(
          top: 24,
          left: 24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardType,
                style: AppStyling.grey12MediumStyle.copyWith(
                  color: Color(0xffFDFDFD),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 57.h,
              ),
              Text(
                'Balance',
                style: AppStyling.grey15MediumStyle.copyWith(
                  color: Color(0xffFDFDFD),
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '23400 EG',
                style: AppStyling.grey15MediumStyle.copyWith(
                  color: Color(0xffFDFDFD),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                children: [
                  Text(
                    '****  3434',
                    style: AppStyling.grey15MediumStyle.copyWith(
                      color: Color(0xffFDFDFD),
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    width: 41.w,
                  ),
                  Text(
                    '12/24',
                    style: AppStyling.grey15MediumStyle.copyWith(
                      color: Color(0xffFDFDFD),
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
