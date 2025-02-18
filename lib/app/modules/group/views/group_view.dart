import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/core/components/animations/loading_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/icon_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/empty_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/header_component.dart';
import 'package:solvodev_mobile_structure/app/core/constants/get_builders_ids_constants.dart';
import 'package:solvodev_mobile_structure/app/core/constants/icons_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/constants/strings_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/modules/contact/controllers/contact_controller.dart';
import 'package:solvodev_mobile_structure/app/modules/group/controllers/group_controller.dart';
import 'package:solvodev_mobile_structure/widget/avatar_card.dart';
import 'package:solvodev_mobile_structure/widget/person_component.dart';

class GroupView extends GetView<GroupController> {
  const GroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        appBarHeight: 77,
        backgroundColor: MainColors.authAppbarTextColor(context),
        titleWidget: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringsAssetsConstants.newgroup,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text('100 contact', style: TextStyle(fontSize: 13)),
          ],
        ),
        actionWidget: Row(
          children: [
            IconButtonComponent(
              onTap: () {},
              iconLink: IconsAssetsConstants.searchIcon,
            ),
          ],
        ),
      ),
      body: Stack(children: [
        GetBuilder<GroupController>(builder: (groupLogic) {
          return GetBuilder<GroupController>(
            id: GetBuildersIdsConstants.grouplist,
            builder: (group_logic) {
              return ListView.builder(
                  itemCount: group_logic.usersList.where((element) => groupLogic.usersChackedStatuus[element.name]== true ).toList().length,
                  itemBuilder: (context, index) {
                    return PersonComponent(
                      user: group_logic.usersList.where((element) => groupLogic.usersChackedStatuus[element.name]== true ).toList()[index],
                      isSelected:
                      group_logic.usersChackedStatuus[
                      group_logic
                          .usersList[index]
                          .name] ??
                          false,
                      onChangeSeletedValue: (value) =>
                          group_logic.checkUser(
                              group_logic.usersList.where((element) => groupLogic.usersChackedStatuus[element.name]== true ).toList()[index].name,
                              value),
                      name: group_logic.usersList.where((element) => groupLogic.usersChackedStatuus[element.name]== true ).toList()[index].name,
                      icon: Icons.person,
                    );
                  });
            },
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: GetBuilder<GroupController>(
            id: GetBuildersIdsConstants.grouplist,
            builder: (group_logic) {
              return ListView.builder(
                  itemCount: group_logic.usersList.length,
                  itemBuilder: (context, index) {
                    return PersonComponent(
                      user: group_logic.usersList[index],
                      isSelected:
                      group_logic.usersChackedStatuus[
                      group_logic
                          .usersList[index]
                          .name] ??
                          false,
                      onChangeSeletedValue: (value) =>
                          group_logic.checkUser(
                              group_logic
                                  .usersList[index].name,
                              value),
                      name: group_logic
                          .usersList[index].name,
                      icon: Icons.person,
                    );
                  });
            },
          ),
        ),
        Column(
          children: [
            GetBuilder<GroupController>(
              id: GetBuildersIdsConstants.avatarlist,
              builder: (logic) {
                return Container(
                  height: 75,
                  color: MainColors.greyColor(context),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: logic.usersList.length,
                    itemBuilder: (context, index) {
                      return logic.usersList[index].select
                          ? AvatarCard(users: logic.usersList[index])
                          : SizedBox
                          .shrink(); // Use SizedBox.shrink() for empty items
                    },
                  ),
                );
              },
            ),
            Divider(thickness: 1),
          ],
        ),

      ]),
    );
  }
}
