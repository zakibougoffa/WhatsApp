
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/constants/get_builders_ids_constants.dart';
import 'package:solvodev_mobile_structure/app/modules/contact/controllers/contact_controller.dart';
import 'package:solvodev_mobile_structure/widget/avatar_card.dart';
import 'package:string_validator/string_validator.dart';

class GroupController extends GetxController {
  List<ChatModel> usersList = [
    ChatModel(
      name: 'ziko',
      icon: 'person.svg',
      time: '18:20',
      currentMessage: 'wiiiw',
      isGroup: false,
      select: false,
    ),
    ChatModel(
      name: 'ilyas',
      icon: 'person.svg',
      time: '10:20',
      currentMessage: 'fat',
      isGroup: false,
      select: false,
    ),
    ChatModel(
      name: 'badis',
      icon: 'person.svg',
      time: '08:20',
      currentMessage: 'ta7an',
      isGroup: false,
      select: false,
    ),
    ChatModel(
      name: 'hendroux',
      icon: 'person.svg',
      time: '11:20',
      currentMessage: 'nigga',
      isGroup: false,
      select: false,
    ),
  ];
  List<ChatModel> groups =[];
  Map<String, bool> usersChackedStatuus = {};



  void resetCheckedUsersList() {
    usersChackedStatuus = {}; // Initialize the map outside the loop
    for (var user in usersList) {
      usersChackedStatuus[user.name] = false;
      // Use the group's ID as the key
    }
    update([GetBuildersIdsConstants.grouplist]);
  }

  void checkUser(String username,bool value) {
    usersChackedStatuus[username] = value;
    update([GetBuildersIdsConstants.grouplist]);
  }


//   void toggleUserSelection() {
//     final index = usersList.indexOf(usersList as ChatModel);
//     if (index != -1) {
//       usersList[index].select = !usersList[index].select;
//       if (!usersList[index].select) { // Use comparison operator
//         groups.add(usersList as ChatModel);
//       } else {
//         groups.remove(usersList);
//       }
//     }
//     update([GetBuildersIdsConstants.avatarlist]); // Update UI after all changes
//
//
// }







    @override
  void onInit() {
    resetCheckedUsersList();
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
