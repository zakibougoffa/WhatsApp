import 'package:flutter/material.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/modules/chats/controllers/chats_controller.dart';

class MessageComponent extends StatelessWidget {
  const MessageComponent(
      {super.key, required this.chatdata,});
final ChatModel chatdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(Icons.group),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatdata.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [

                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  chatdata.currentMessage,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(chatdata.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
              color: MainColors.greyColor(context),
            ),
          )
        ],
      ),
    ));
  }
}
