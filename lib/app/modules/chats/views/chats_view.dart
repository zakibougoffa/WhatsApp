import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/CustomCard.dart';
import 'package:solvodev_mobile_structure/MessageComponent.dart';
import 'package:solvodev_mobile_structure/app/core/components/animations/loading_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/empty_component.dart';
import 'package:solvodev_mobile_structure/app/core/constants/get_builders_ids_constants.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/data/models/user_model.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';

import '../controllers/chats_controller.dart';

class ChatsView extends GetView<ChatsController> {
  ChatsView({Key? key}) : super(key: key);
  ChatsController controller = Get.put(ChatsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.CONTACT);
        },
        child: const Icon(Icons.chat),
      ),
      body: Stack(children: [
        GetBuilder<ChatsController>(
          id: GetBuildersIdsConstants.chatsList,
          builder: (logic) {
            return logic.isLoadingChats == true
                ? LoadingComponent()
                : logic.chats.isEmpty
                    ? EmptyComponent(
                        text: "you have no chats yet.",
                      )
                    : ListView.builder(
                        itemCount: logic.chats.length,
                        itemBuilder: (context, index) =>
                            CustomCard(chatdata: logic.chats[index]),
                      );
          },
        ),
      ]),
    );
  }
}
