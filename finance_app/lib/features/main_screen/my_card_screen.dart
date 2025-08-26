import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/widgets/custom_title_widget.dart';
import 'package:finance_app/features/main_screen/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: CustomTitel(title: 'All Cards', backIconPath: AppAssets.arrowBackBlack, leadingIconPath: AppAssets.listIcon),
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24.h,
            ),
            VisaCard(),
            SizedBox(
              height: 24.h,
            ),
            VisaCard(
              backgroundColor: Color(0xff4151a6),
            ),
          ],
        ),
      ),
    );
  }
}

class VisaCard extends StatelessWidget {
  const VisaCard({
    super.key,
    this.cardNumber,
    this.cardType,
    this.balance,
    this.expiryDate,
    this.backgroundColor,
  });
  final String? cardNumber;
  final String? cardType;
  final String? balance;
  final String? expiryDate;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardItem(
          width: 327.w,
          height: 179.h,
          backgroundColor: backgroundColor ?? AppColor.primaryColor,
          cardType: cardType ?? 'X-Card',
          balance: balance ?? '80000',
          expiryDate: expiryDate ?? '12/25',
          cardNumber: cardNumber ?? '',
        ),
        Positioned(
          top: 26,
          left: 271,
          right: 29,
          child: Image.asset(AppAssets.visaLogo),
        ),
      ],
    );
  }
}
