import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/icon_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/inputs/image_input_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/inputs/text_input_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/header_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/items_component.dart';
import 'package:solvodev_mobile_structure/app/core/constants/icons_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/widget/message_card.dart';
import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  ChatView({
    Key? key,
  }) : super(key: key);
  final ChatModel chatdata = Get.arguments as ChatModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/back_ground.png",
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width ,),
        Scaffold(
          backgroundColor: MainColors.greyColor(context),
          appBar: HeaderComponent(
            backButtonBackgroundColor: MainColors.primaryColor,
            backgroundColor: MainColors.authAppbarTextColor(context),
            actionWidget: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    child: SvgPicture.asset(
                      IconsAssetsConstants.userIcon,
                      color: Colors.white,
                      height: 36,
                      width: 36,
                    ),
                    radius: 20,
                    backgroundColor: MainColors.greyColor(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatdata.name,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "last seen today",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  IconButtonComponent(
                      iconLink: IconsAssetsConstants.callIcon, onTap: () {}),
                  IconButtonComponent(
                      iconLink: IconsAssetsConstants.videocamera, onTap: () {}),
                  IconButtonComponent(
                      iconLink: IconsAssetsConstants.moreicons, onTap: () {}),
                ],
              ),
            ),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              ListView(
                children: [
                  MessageCard(),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          // width: MediaQuery.of(context).size
                          // .width - 55,
                          child: TextInputComponent(
                            textAlign: TextAlign.center,
                            textInputType: TextInputType.multiline,
                            suffix: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButtonComponent(
                                    iconColor: MainColors.circleColor(context),
                                    iconLink: IconsAssetsConstants.emojiicon,
                                    onTap: () {}),
                                IconButtonComponent(
                                    iconColor: MainColors.circleColor(context),
                                    iconLink: IconsAssetsConstants.cameraalticon,
                                    onTap: () {
                                      showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (builder) =>
                                              ImageInputComponent());
                                    }),
                                IconButtonComponent(
                                  iconColor: MainColors.circleColor(context),
                                  iconLink: IconsAssetsConstants.attachmenticon,
                                  onTap: () {
                                    showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (builder) =>
                                            const ItemsComponent());
                                  },
                                )
                              ],
                            ),
                            border: BorderSide.none,
                            hint: 'Type your message',
                            borderRadius: 25,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: MainColors.circleColor(context),
                          child: IconButtonComponent(
                              backgroundColor: MainColors.langBgColor(context),
                              iconColor: Colors.white,
                              iconLink: IconsAssetsConstants.sendicon,
                              onTap: () {}),
                        )
                      ],
                    ),
                    // emojiSelect(),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
