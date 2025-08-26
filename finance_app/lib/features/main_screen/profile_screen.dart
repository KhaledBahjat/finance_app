import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:finance_app/core/widgets/custom_title_widget.dart';
import 'package:finance_app/core/widgets/profile_picture_widget.dart';
import 'package:finance_app/features/main_screen/widgets/cusom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: CustomTitel(
          title: 'My Profile',
          backIconPath: AppAssets.arrowBackBlack,
          leadingIconPath: AppAssets.editIcon,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 39.h,
          ),
          Center(
            child: ProfialPic(
              width: 100.w,
              height: 100.h,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomCard(
            title: 'Full Name',
            subtitle: 'Khaled Bahjhat',
          ),
          CustomCard(
            title: 'Email',
            subtitle: 'khaled.bahjhat@example.com',
          ),
          CustomCard(
            title: 'Phone Number',
            subtitle: '+1234567890',
          ),
          CustomCard(
            title: 'Address',
            subtitle: '123 Main St, Anytown, USA',
          ),
        ],
      ),
    );
  }
}

