import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/features/main_screen/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.05,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),

          items: [
            CardItem(
              backgroundColor: AppColor.primaryColor,
              cardType: 'X-Card',
              balance: '3209',
              expiryDate: '11/25',
              cardNumber: '4545',
            ),
            CardItem(
              backgroundColor: Color(0xff4151a6),
              cardType: 'M-Card',
              balance: '23400',
              expiryDate: '12/24',
              cardNumber: '3434',
            ),
            CardItem(
              backgroundColor: AppColor.primaryColor,
              cardType: 'X-Card',
              balance: '3209',
              expiryDate: '11/25',
              cardNumber: '4545',
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
