import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/modules/verfication/views/verfication_view.dart';

class VerficationController extends GetxController {
  late TextEditingController codeController;
  late  String verificationId;
  late  String phoneNumber;



  final count = 0.obs;
  @override

  void onInit() {
    codeController = TextEditingController();
    if (Get.arguments != null ) {
      if(Get.arguments['verificationId'] != null) {
        verificationId = Get.arguments['verificationId'].toString();
      }
      if(Get.arguments['phoneNumber'] != null){
        phoneNumber = Get.arguments['phoneNumber'].toString();
      }
    }
    print('recived $verificationId $phoneNumber');
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

  void increment() => count.value++;
}
