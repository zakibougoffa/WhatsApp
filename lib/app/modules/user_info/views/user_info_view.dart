import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/core/components/inputs/text_input_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/others/header_component.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';

import '../controllers/user_info_controller.dart';

class UserInfoView extends GetView<UserInfoController> {
  const UserInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        backgroundColor: MainColors.backgroundColor(context),

        titleWidget: Text('Profile info',
            style: TextStyle(
              color: MainColors.authAppbarTextColor(context),
              fontSize: 20,
          ),),
        isBack: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text('Please provide your name and an optional profile photo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color:  MainColors.greyColor(context),
              ),),
            const SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(26),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 3,right: 3),
                child: Icon(Icons.add_a_photo_rounded,
                  size: 48,
                  color: MainColors.photoIconColor(context),),
              ),

            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                Expanded(child: TextInputComponent(
                  hint: 'Type your name here',
                  textAlign: TextAlign.left,
                  autoFocus: true,
                )),
                const SizedBox(width: 10,),
                Icon(Icons.emoji_emotions_outlined,
                  color: MainColors.photoIconColor(context),),
                const SizedBox(width: 20,),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap:() => Get.toNamed(Routes.USER_INFO),
        child:
        Container(

          width: 200,
          height: 42,
          color: MainColors.circleColor(context),
          child: const Center(child: Text('NEXT',style: TextStyle(fontSize: 20),)),
        ),
      ),
    );
  }
}


