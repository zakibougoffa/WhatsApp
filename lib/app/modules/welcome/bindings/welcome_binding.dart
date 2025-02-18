import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:solvodev_mobile_structure/common/widgets/custom_elevated-button.dart';
import 'package:solvodev_mobile_structure/widget/language_button.dart';
import 'package:solvodev_mobile_structure/widget/privacy_and_terms.dart';
import 'package:solvodev_mobile_structure/common/extension/custom_theme_extension.dart';

import '../controllers/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(
      () => WelcomeController(),
    );
  }
}
