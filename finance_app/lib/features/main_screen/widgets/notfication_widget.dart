import 'package:finance_app/core/styling/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileNotifcationWidget extends StatelessWidget {
  const TopProfileNotifcationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5.w,
          color: Color(0xFFE3E9ED),
        ),
        // borderRadius: BorderRadius.circular(24.r),
      ),
      alignment: Alignment.center,
      child: Icon(
        CupertinoIcons.bell_fill,
        color: AppColor.primaryColor,
        size: 24.sp,
      ),
    );
  }
}
