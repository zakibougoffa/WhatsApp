import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/icon_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/inputs/text_input_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/header_component.dart';
import 'package:solvodev_mobile_structure/app/core/constants/icons_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';
import 'package:solvodev_mobile_structure/feature/auth/widgets/custom_icon_button.dart';

import '../controllers/verfication_controller.dart';

class VerficationView extends GetView<VerficationController> {
  const VerficationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        backgroundColor: MainColors.backgroundColor(context),

        titleWidget:Text('Verify your number',style: TextStyle(
        color: MainColors.authAppbarTextColor(context),
        fontSize: 20,) ,

          ),
        isBack: true,
        actionWidget:
          IconButtonComponent(onTap: () => Get.toNamed(Routes.HOME),
               iconLink: IconsAssetsConstants.aboutUsIcon,),

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                        color: MainColors.greyColor(context),
                        height: 1.5,
                      ),
                      children:[
                        TextSpan(
                          text:"You've tried to register +675398344. before requesting an SMS or Call with your code.",
                        ),
                        TextSpan(
                          text: "Wrong number?",
                          style: TextStyle(
                            color: MainColors.blueColor(context),
                          ),
                        ),
                      ]
                  )),),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: TextInputComponent(
                // controller: codeController,
                hint: "- - -  - - -",

                 // fontsize: 30,
                autoFocus:true ,
                textInputType: TextInputType.number,
                onChange: (value) {
                  if (value.length == 6) {}
                }, textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.message, color: MainColors.greyColor(context)),
                const SizedBox(width: 20),
                Text(
                  'Resend SMS',
                  style: TextStyle(
                    color: MainColors.greyColor(context),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(
              color: MainColors.greyColor(context),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.phone, color: MainColors.greyColor(context)),
                const SizedBox(width: 20),
                Text(
                  'Call Me',
                  style: TextStyle(
                    color: MainColors.greyColor(context),
                  ),
                ),
                 ],

            )
          ],
        ),
      ),


    );
  }
}
