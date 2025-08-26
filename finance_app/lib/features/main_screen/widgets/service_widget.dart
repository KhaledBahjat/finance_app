import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key, required this.title, required this.subtitle, required this.icon,
  });
final String title;
final String subtitle;
final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 140.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 164, 171, 187),
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Color(0xffECF1F6),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: icon,
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            title,
            style: AppStyling.black16w600Style,
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            subtitle,
            style: AppStyling.grey12MediumStyle,
          ),
        ],
      ),
    );
  }
}
