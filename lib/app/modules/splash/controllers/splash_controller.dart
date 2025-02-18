import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/modules/config_controller.dart';
import 'package:solvodev_mobile_structure/app/modules/user_controller.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    await Get.find<ConfigController>().initialize();
    Future.delayed(const Duration(seconds: 3), () {
      Get.find<UserController>().initialize();
    });
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
