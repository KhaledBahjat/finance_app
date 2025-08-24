import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/features/auth/widgets/social_media_button.dart';
import 'package:flutter/material.dart';


class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SocialMediaButton(iconPath: AppAssets.facebookLogo, onTap: () {}),
        SocialMediaButton(iconPath: AppAssets.googleLogo, onTap: () {}),

        SocialMediaButton(iconPath: AppAssets.appleLogo, onTap: () {}),
      ],
    );
  }
}


