import 'package:flutter/material.dart';
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
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';
import 'package:solvodev_mobile_structure/button_card.dart';
import 'package:solvodev_mobile_structure/contact_card.dart';

import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({Key? key}) : super(key: key);
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
                StringsAssetsConstants.selectContact,
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
              IconButtonComponent(
                onTap: () { },
                iconLink: IconsAssetsConstants.moreicons,
              ),
            ],
          ),
        ),
        body: Stack(children: [
          GetBuilder<ContactController>(
            id: GetBuildersIdsConstants.contactlist,
            builder: (logic) {
              return logic.isLoadingChats == true
                  ? LoadingComponent()
                  : logic.contacts.isEmpty
                  ? EmptyComponent(
                text: "you have no chats yet.",
              )
                  : ListView.builder(
                itemCount: logic.contacts.length + 2,
                itemBuilder: (context, index) {
                  if (index == 0){
                    return InkWell(
                      onTap: () => Get.toNamed(Routes.GROUP),
                        child: const ButtonCard(name: "New group", icon: Icons.group));
                  }
                  else if (index == 1){
                    return ButtonCard(name: "New contact", icon: Icons.person_add);

                  }
                  return ContactCard(contact: logic.contacts[index - 2],);
                }
              );
            },
          ),
        ]),
        // body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //   Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       ListTile(
        //           leading: Icon(Icons.group),
        //           title: Text(
        //             'New group',
        //           )),
        //       ListTile(
        //         leading: Icon(Icons.contact_phone),
        //         title: Text('New contact'),
        //         trailing: Icon(Icons.qr_code),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.symmetric(
        //           horizontal: 20,
        //           vertical: 10,
        //         ),
        //         child: Text(
        //           'Contacts on WhatsApp',
        //           style: TextStyle(
        //             fontWeight: FontWeight.w600,
        //             color: MainColors.greyColor(context),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        //   Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       // if (index == allContacts[0].length)
        //       Padding(
        //         padding: const EdgeInsets.symmetric(
        //           horizontal: 20,
        //           vertical: 10,
        //         ),
        //         child: Text(
        //           'Invite to WhatsApp',
        //           style: TextStyle(
        //             fontWeight: FontWeight.w600,
        //             color: MainColors.greyColor(context),
        //           ),
        //         ),
        //       ),
              // ContactCard(
              //   contactSource: phoneContacts,
              //   onTap: () => shareSmsLink(phoneContacts.phoneNumber),
              // )
            // ],

            // ListTile myListTile({
            //   required IconData leading,
            //   required String text,
            //   IconData? trailing,
            // }) {
            //   return ListTile(
            //     contentPadding: const EdgeInsets.only(top: 10, left: 20, right: 10),
            //     leading: CircleAvatar(
            //       radius: 20,
            //       backgroundColor: Coloors.greenDark,
            //       child: Icon(
            //         leading,
            //         color: Colors.white,
            //       ),
            //     ),
            //     title: Text(
            //       text,
            //       style: const TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.w500,
            //       ),
            //     ),
            //     trailing: Icon(
            //       trailing,
            //       color: Coloors.greyDark,
        //   ),
        // ])
    );
  }
}
