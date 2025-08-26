import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/features/main_screen/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 263.h,
        padEnds: false,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeFactor: 0.05,
      ),

      items: [
        CardItem(backgroundColor: Color(0xff4151a6), cardType: 'M-Card'),
        CardItem(backgroundColor: AppColor.primaryColor, cardType: 'X-Card'),
      ],
    );
  }
}
