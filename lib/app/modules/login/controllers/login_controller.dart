import 'package:country_picker/country_picker.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/core/components/pop_ups/dialog_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/pop_ups/toast_component.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';
import 'package:solvodev_mobile_structure/common/helper/show_alert_dialog.dart';

class LoginController extends GetxController {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;

  late GlobalKey<FormState> formKey = GlobalKey<FormState>();
  sendCodeToPhone() {
    final phoneNumber = phoneNumberController.text;
    final countrytName = countryNameController.text;
    final countryCode = countryCodeController.text;
    if (formKey.currentState!.validate()) {
      print('Valiudation success');
      Get.toNamed(Routes.VERFICATION, arguments: {
        'verificationId': 200,
        'phoneNumber': phoneNumberController.value,
      });
    }
  }

  final TextEditingController phoneNumberController = TextEditingController();
  final FocusNode phoneNumberFocusNode = FocusNode();

  void showCountryPickerBottomSheet() {
    showCountryPicker(
      context: Get.context!,
      showPhoneCode: true,
      favorite: ['ET'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: MainColors.primaryColor,
        flagSize: 22,
        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(color: MainColors.secondColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: MainColors.primaryColor),
          prefixIcon:
              Icon(Icons.language, color: MainColors.greyColor(Get.context!)),
          hintText: 'Search country by code or name',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: MainColors.primaryColor),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: MainColors.secondColor,
            ),
          ),
        ),
      ),
      onSelect: (country) {
        countryNameController.text = country.name;
        countryCodeController.text = country.phoneCode;
      },
    );
  }
 // // void showCurrencyPicker({required BuildContext context,
 // //   required bool showSearchField,  onSelect,
 // //   required bool showCurrencyCode,
 // //   required bool showFlag,
 // //   required bool showCurrencyName,
 // //   required bool useRootNavigator})  {
 // //     showCurrencyPicker(
 // //      context: Get.context!,
 // //      showSearchField: true,
 // //      showCurrencyCode: true,
 // //       showFlag: true,
 // //       showCurrencyName: true,
 // //       useRootNavigator: false,
 // //      onSelect: (country){
 // //               countryNameController.text = country.name;
 // //              countryCodeController.text = country.phoneCode;
 // //             },
 // //
 // //
 // //    );
 //  }
  //
  //

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    countryNameController = TextEditingController(text: 'Algeria');
    countryCodeController = TextEditingController(text: '213');
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
