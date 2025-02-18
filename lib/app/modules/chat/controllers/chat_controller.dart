
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';

class ChatController extends GetxController {
  List<ChatModel> chats = [
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

  Widget bottomsheet(){
    return Container(
      height: 278,
      width: 1.sw,
      child: Card(
        margin: EdgeInsets.all(18),
      ),
    );
  }
  // final chatControllerProvider = Provider((ref) {
  //   final chatRepository = ref.watch(chatRepositoryProvider);
  //   return ChatController(
  //     chatRepository: chatRepository,
  //     ref: ref,
  //   );
  // });
  //
  //
  // final ChatRepository chatRepository;
  // final ProviderRef ref;
  //
  // ChatController({required this.chatRepository, required this.ref});
  // void sendFileMessage(
  //     BuildContext context,
  //     var file,
  //     String receiverId,
  //     MessageType messageType,
  //     ) {
  //   ref.read(userInfoAuthProvider).whenData((senderData) {
  //     return chatRepository.sendFileMessage(
  //       file: file,
  //       context: context,
  //       receiverId: receiverId,
  //       senderData: senderData!,
  //       ref: ref,
  //       messageType: messageType,
  //     );
  //   });
  // }
  //
  // Stream<List<MessageModel>> getAllOneToOneMessage(String receiverId) {
  //   return chatRepository.getAllOneToOneMessage(receiverId);
  // }
  //
  // Stream<List<LastMessageModel>> getAllLastMessageList() {
  //   return chatRepository.getAllLastMessageList();
  // }
  //
  // void sendTextMessage({
  //   required BuildContext context,
  //   required String textMessage,
  //   required String receiverId,
  // }) {
  //   ref.read(userInfoAuthProvider).whenData(
  //         (value) => chatRepository.sendTextMessage(
  //       context: context,
  //       textMessage: textMessage,
  //       receiverId: receiverId,
  //       senderData: value!,
  //     ),
  //   );
  // }

  final count = 0.obs;
  @override
  void onInit() {
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

  void increment() => count.value++;
}
