import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/icon_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/header_component.dart';
import 'package:solvodev_mobile_structure/app/core/constants/icons_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/modules/calls/views/calls_view.dart';
import 'package:solvodev_mobile_structure/app/modules/camera/controllers/camera_controller.dart';
import 'package:solvodev_mobile_structure/app/modules/camera/views/camera_view.dart';
import 'package:solvodev_mobile_structure/app/modules/chats/views/chats_view.dart';
import 'package:solvodev_mobile_structure/app/modules/status/views/status_view.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';
import 'package:solvodev_mobile_structure/feature/auth/widgets/custom_icon_button.dart';
import 'package:solvodev_mobile_structure/widget/popbutwidget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<CameraController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CameraController());
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'WhatsApp',
              style: TextStyle(letterSpacing: 1),
            ),
            elevation: 1,
            actions: [
              IconButtonComponent(
                  iconLink: IconsAssetsConstants.searchIcon, onTap: () {}),
              IconButtonComponent(
                  iconLink: IconsAssetsConstants.moreicons, onTap: () {}),
            ],
            bottom:  TabBar(
                indicatorWeight: 4,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                splashFactory: NoSplash.splashFactory,
                tabs: [
                  Tab(
                    child: IconButtonComponent(
                      iconLink: IconsAssetsConstants.cameraalticon,
                      onTap: () {
                        controller.opencamera();
                      },
                      
                    ),
                  ),
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              Text(''),
              ChatsView(),
              StatusView(),
              CallsView(),
            ],
          ),
        ));
  }
}
