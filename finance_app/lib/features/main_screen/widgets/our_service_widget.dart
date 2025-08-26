import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/features/main_screen/widgets/service_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurService extends StatelessWidget {
  const OurService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ServiceWidget(
              title: 'Send money',
              subtitle: 'Take acc to acc',
              icon: Icon(Icons.send, color: AppColor.primaryColor),
            ),
            SizedBox(
              width: 10.w,
            ),
            ServiceWidget(
              title: 'Pay the bill',
              subtitle: 'Pay your bills easily',
              icon: Icon(Icons.payment, color: AppColor.primaryColor),
            ),
          ],
        ),
    
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            ServiceWidget(
              title: 'Request',
              subtitle: 'request money',
              icon: Icon(
                Icons.request_page,
                color: AppColor.primaryColor,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            ServiceWidget(
              title: 'Contact',
              subtitle: 'contact support',
              icon: Icon(
                Icons.contact_page,
                color: AppColor.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
