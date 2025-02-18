
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:solvodev_mobile_structure/app/core/components/buttons/primary_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/pop_ups/bottom_sheet_component.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/core/styles/text_styles.dart';
import 'package:solvodev_mobile_structure/app/modules/config_controller.dart';
import 'package:solvodev_mobile_structure/app/modules/welcome/views/components/change_app_lang_window_component.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';
import 'package:solvodev_mobile_structure/widget/language_button.dart';
import 'package:solvodev_mobile_structure/widget/privacy_and_terms.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [
            Expanded(

              child:
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 50,
                  vertical: 10,),
                    child:Image.asset('assets/images/circle.png',color: MainColors.circleColor(context),)
                ),
              ) ,
            ),
            const SizedBox(height: 40,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: [
                      Text("Welcome to WhatsApp",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                       const  PrivacyAndTerms(),
                      const SizedBox(height: 40.0,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 50.w
                        ),
                        child: PrimaryButtonComponent
                          (onTap:()=> Get.toNamed(Routes.HOME),
                          text: 'AGREE AND CONTINUE',
                          textStyle: TextStyle(color: MainColors.senderChatCardBg(context)),
                          backgroundColor: MainColors.circleColor(context),
                        height: 45,),
                      ),
                      const SizedBox(height: 50.0,),
                      // const   languageButton(),
                      GestureDetector(
                        onTap: () => showLanguagesListWindow(context),

                        child: Container(
                          width: 0.3.sw,
                          height: 30,
                          decoration: BoxDecoration(color: MainColors.greyColor(context),

                          borderRadius: BorderRadius.circular(1000.r),

                        ), child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.language_outlined,
                              color: MainColors.circleColor(context),
                            ),
                        SizedBox(width: 10,),
                        Text(
                        Get.locale?.languageCode == 'ar'
                        ? 'العربية'
                            : Get.locale?.languageCode == 'en'
                        ? 'English'
                          : 'Français',
                          style:TextStyles.smallBodyTextStyle(context) ,

                        ),
                          SizedBox(width: 10,),
                          Icon(
                              Icons.keyboard_arrow_down,
                            color: MainColors.circleColor(context),
                          ),


                          ]),

                        ),
                      ),
                    ]
                ),
              ),)
          ],
        )
    );

  }
  void showLanguagesListWindow(BuildContext context) {
    print('95');
    // Get.find<ConfigController>().changeSelectedAppLang(Get.locale?.languageCode ?? 'ar');
    BottomSheetComponent.show(
      dismissible: true,
      context,
      body: const ChangeAppLangWindowComponent(),
    );
  }
}