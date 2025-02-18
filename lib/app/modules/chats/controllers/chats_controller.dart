import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/constants/get_builders_ids_constants.dart';

class ChatsController extends GetxController {
  List<ChatModel> chats = [];
  bool isLoadingChats = false;
  void changeIsLoadingChats(value) {
    if (isLoadingChats == value) return;
    isLoadingChats = value;
    update([GetBuildersIdsConstants.chatsList,






    ]);
  }

  void getChatsList() {
    if (isLoadingChats) return;
    changeIsLoadingChats(true);
    //logic to get chats list from firebase or api
    chats = [
      ChatModel(
        name: 'ziko',
        icon: 'person.svg',
        time: '18:20',
        currentMessage: 'wiiiw',
        isGroup: false,
          select: false

      ),
      ChatModel(
        name: 'ilyas',
        icon: 'person.svg',
        time: '10:20',
        currentMessage: 'fat',
        isGroup: false,
          select: false

      ),
      ChatModel(
        name: 'badis',
        icon: 'person.svg',
        time: '08:20',
        currentMessage: 'ta7an',
        isGroup: false,
          select: false

      ),
      ChatModel(
        name: 'hendroux',
        icon: 'person.svg',
        time: '11:20',
        currentMessage: 'nigga',
        isGroup: false,
          select: false

      ),
    ];

    changeIsLoadingChats(false);
  }

  @override
  void onInit() {
    getChatsList();
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
