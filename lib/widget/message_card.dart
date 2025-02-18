import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          color: Color(0xffdcf8c6),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    right: 30,
                    left: 10,
                    top: 5,
                  ),
                  child: Text('wechh',style: TextStyle(fontSize: 16,
                  color: Colors.black87),),
                ),
                Positioned(
                  bottom: 4,
                  left: 40,

                  child: Row(
                    children: [
                      Text('08:00',
                      style: TextStyle(fontSize: 11,color: Colors.grey[600]),),
                      Icon(Icons.done_all,size: 18,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
