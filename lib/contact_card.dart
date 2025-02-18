import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/data/models/user_model.dart';

import 'common/utils/coloors.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.contact,
  });
  final ChatModel contact;
  // final UserModel contactSource;
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      leading: Container(
        height: 53,
        width: 50 ,
        child: Stack(children: [
          CircleAvatar(
              backgroundColor: MainColors.greyColor(context),
              radius: 20,
              // backgroundImage: contactSource.profileImageUrl!.isNotEmpty
              // ? CachedNetworkImageProvider(contactSource.profileImageUrl)
              // : null,
              child: const Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              )),

          const Positioned(
            bottom: 4,
            right: 5,

            child: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 11,
              child: Icon(Icons.check,color: Colors.white,size: 18,),
            ),
          )
        ]),
      ),
      title: Text(
        contact.name, // contactSource.username,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Hey there! I'm using WhatsApp",
        style: TextStyle(
          color: MainColors.greyColor(context),
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Coloors.greenDark,
        ),
        onPressed: () {},
        child: const Text('INVITE'),
      ),
    );
  }
}
