

import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/icon_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/primary_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/inputs/text_input_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/header_component.dart';
import 'package:solvodev_mobile_structure/app/core/constants/fonts_family_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/constants/icons_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/constants/strings_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/core/styles/text_styles.dart';
import 'package:solvodev_mobile_structure/app/core/utils/validator_util.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:   HeaderComponent(
        backgroundColor: MainColors.backgroundColor(context),

        title: 'Enter your phone number',

        actionWidget:
          IconButtonComponent(
            onTap: () { },
            iconLink: IconsAssetsConstants.aboutUsIcon,

          )
        ,
      ),
       body: SingleChildScrollView(
         child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'WhatsApp will need to verify your phone number',
                      style: TextStyle(
                        color: MainColors.greyColor(context),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: "What's my number?",
                          style: TextStyle(
                            color: MainColors.blueColor(context),
                          ),
                        ),

                      ]
                  )),
               //
            ),
             SizedBox(height: 10.w,),
            // Padding(
            //   padding:  EdgeInsets.symmetric(horizontal: 50),
            //   child: TextInputComponent(
            //     onTap: controller.showCountryPickerBottomSheet(),
            //     controller: controller.countryNameController,
            //     readOnly: true,
            //     suffix:  Icon(Icons.arrow_drop_down, color: MainColors.circleColor(context),),
            //   ),
            // ),
          const   SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    TextInputComponent(
                      controller: controller.phoneNumberController,
                      focusNode: controller.phoneNumberFocusNode,
                      // nextNode: controller.passwordFocusNode,
                      textInputType: TextInputType.phone,
                      maxLength: 9,
                      label: StringsAssetsConstants.phoneNumber,
                      isLabelOutside: true,
                      hint:
                      '${StringsAssetsConstants.enter} ${StringsAssetsConstants.phoneNumber}...',
                      prefix: Row(
                        children: [
                          SizedBox(width: 20.w),
                          // CountryPickerDropdown(
                          //   initialValue: 'DZ',
                          //   iconSize: 20.r,
                          //   dropdownColor:
                          //   MainColors.backgroundColor(context),
                          //   itemBuilder: (country) => Row(
                          //     children: <Widget>[
                          //       CountryPickerUtils
                          //           .getDefaultFlagImage(country),
                          //       SizedBox(width: 5.w),
                          //       Text(
                          //         "+${country.phoneCode}",
                          //         style:
                          //         TextStyles.mediumBodyTextStyle(
                          //             context)
                          //             .copyWith(
                          //           fontFamily:
                          //           FontsFamilyAssetsConstants
                          //               .bold,
                          //         ),
                          //         textDirection: TextDirection.ltr,
                          //       ),
                          //     ],
                          //   ),
                          //   itemFilter: (c) =>
                          //       ['DZ'].contains(c.isoCode),
                          //   priorityList: [
                          //     CountryPickerUtils.getCountryByIsoCode(
                          //         'DZ'),
                          //   ],
                          //   // sortComparator: (Country a, Country b) =>
                          //   //     a.isoCode.compareTo(b.isoCode),
                          //   onValuePicked: (Country country) {},
                          // ),
                        // showCurrencyPicker(
                        //   context: context,
                        //   theme: CurrencyPickerThemeData(
                        //     flagSize: 25,
                        //     titleTextStyle: TextStyle(fontSize: 17),
                        //     subtitleTextStyle: TextStyle(fontSize: 15, color: Theme.of(context).hintColor),
                        //     bottomSheetHeight: MediaQuery.of(context).size.height / 2,
                        //     //Optional. Styles the search field.
                        //     inputDecoration: InputDecoration(
                        //       labelText: 'Search',
                        //       hintText: 'Start typing to search',
                        //       prefixIcon: const Icon(Icons.search),
                        //       border: OutlineInputBorder(
                        //         borderSide: BorderSide(
                        //           color: const Color(0xFF8C98A8).withOpacity(0.2),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        //   onSelect: (Currency currency) => print('Select currency: ${currency.name}'),
                        // ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                      validate: (value) => ValidatorUtil.phoneValidation(
                          value,
                          customMessage:
                          '${StringsAssetsConstants.check} ${StringsAssetsConstants.phoneNumber}'), textAlign: TextAlign.left,
                    ),

                    Row(
                      // children: [
                      //   SizedBox(width: 70, child:
                      //   TextInputComponent(
                      //     onTap: controller.showCountryPickerBottomSheet(),
                      //     controller: controller.countryCodeController,
                      //     readOnly: true,
                      //     prefix:const Text('+') ,
                      //   ),),
                      //           SizedBox(width: 10.w,),
                      //   Expanded(child:
                      //   Padding(
                      //     padding: const EdgeInsets.symmetric(horizontal: 50),
                      //     child: TextInputComponent(
                      //       onTap: controller.showCountryPickerBottomSheet(),
                      //       controller: controller.phoneNumberController,
                      //       hint: StringsAssetsConstants.phoneNumber,
                      //       textInputType: TextInputType.number,
                      //       prefix:  Icon(Icons.phone, color: MainColors.greyColor(context)),
                      //       validate: (value)=> {ValidatorUtil.phoneValidation(value, customMessage: "check your phone number"),
                      //       },
                      //
                      //     ),
                      //   ),),
                      // ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Carrier charges may apply',
              style: TextStyles.smallBodyTextStyle(context).copyWith(
                color: MainColors.greyColor(context)
              ),
            ),
            const SizedBox(height: 300),


             ],),
       ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap:() => controller.sendCodeToPhone(),
        child:
        Container(

          width: 200,
          height: 42,
          color: MainColors.circleColor(context),
          child: const Center(child: Text('NEXT',style: TextStyle(fontSize: 20),)),
        ),
      ),

    );
  }
}
