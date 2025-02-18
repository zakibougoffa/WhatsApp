class ChatModel{
 late String name;
  late String time;
  late bool isGroup;
  late String icon;
  late String currentMessage;
  bool select = false;
  ChatModel({required this.name,
 required this.icon,
 required this.time,
    required this.currentMessage,
    required this.isGroup,
   required this.select,
  });
}