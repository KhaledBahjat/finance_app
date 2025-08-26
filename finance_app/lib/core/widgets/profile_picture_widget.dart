import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfialPic extends StatelessWidget {
  const ProfialPic({
    super.key,
    this.width = 48,
    this.height = 48,
    this.imagePath,
  });
  final double? width;
  final double? height;
  final String? imagePath;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath ?? 'assets/images/logo.jpg',
        height: width ?? 48.h,
        width: height ?? 48.w,
        fit: BoxFit.fill,
      ),
    );
  }
}
