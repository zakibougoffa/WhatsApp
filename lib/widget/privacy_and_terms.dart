import 'package:flutter/material.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/common/extension/custom_theme_extension.dart';
class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({ Key?  key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'Read our',
            style: TextStyle(
              height: 1.5,
              color: MainColors.greyColor(context),
            ),
            children:[
              TextSpan(
                  text: 'Privacy Policy.',
                  style: TextStyle(color: MainColors.blueColor(context),)
              ),
           const   TextSpan(
                text: 'Tap"Agree and continue" to accept the',
              ),
              TextSpan(
                  text: 'Terms of Services ',
                  style: TextStyle(color: MainColors.blueColor(context),)
              ),
            ]
        ),
      ),
    );
  }
}
