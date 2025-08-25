import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.green,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.blue,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.yellow,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.orange,
      width: double.infinity,
      height: double.infinity,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: AppColor.primaryColor,
        backgroundColor: Colors.white,
        elevation: 1,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppStyling.black15BoldStyle,
        unselectedLabelStyle: AppStyling.grey12MediumStyle.copyWith(
          color: AppColor.bottomNavBarColor,
        ),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.homeIcon,
              height: 24.h,
              width: 24.w,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                AppAssets.plusIcon,
                height: 20.h,
                width: 20.w,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'My card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
