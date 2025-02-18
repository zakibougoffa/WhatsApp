import 'package:flutter/material.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';

class AvatarCard extends StatelessWidget {
    const AvatarCard({super.key, required this.users });
final ChatModel users ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(children: [
            CircleAvatar(
                backgroundColor: MainColors.primaryColor,
                radius: 24,
                // backgroundImage: contactSource.profileImageUrl!.isNotEmpty
                // ? CachedNetworkImageProvider(contactSource.profileImageUrl)
                // : null,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                )),

            Positioned(
              bottom: 0,
              right: 0,

              child: CircleAvatar(

                backgroundColor: Colors.teal,
                radius: 10,
                child: Icon(Icons.clear,color: Colors.white,size: 12,),
              ),
            )
          ]),
          SizedBox(height: 2,),
         Text(users.name,style: TextStyle(fontSize: 13),),
        ],
      ),
    );
  }
}
