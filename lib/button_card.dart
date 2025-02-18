import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';
import 'package:solvodev_mobile_structure/common/utils/coloors.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard(
      {super.key,  required this.name, required this.icon });
  final String name;
  final IconData icon ;
  // final UserModel contactSource;
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:

          () => Get.toNamed(Routes.GROUP),

      child: ListTile(

        contentPadding: const EdgeInsets.only(
          left: 20,
          right: 10,
        ),
        leading: CircleAvatar(
            backgroundColor: MainColors.circleColor(context),
            radius: 20,
            // backgroundImage: contactSource.profileImageUrl!.isNotEmpty
            // ? CachedNetworkImageProvider(contactSource.profileImageUrl)
            // : null,
            child: Icon(
             icon,
              color: Colors.white,
            )),
        title: Text(
          name,          // contactSource.username,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),

      ),
    );
  }
}
