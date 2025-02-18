import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solvodev_mobile_structure/ChatModel.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/button_card.dart';
import 'package:solvodev_mobile_structure/contact_card.dart';

class PersonComponent extends StatelessWidget {
  const PersonComponent(
      {super.key,
      required this.user,
      required this.isSelected,
      required this.onChangeSeletedValue,
      required this.name,
      required this.icon});
  final ChatModel user;
  final bool isSelected;
  final Function(bool) onChangeSeletedValue;
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Checkbox(

            value: isSelected,
            onChanged: (value) => onChangeSeletedValue(value!)

          ),
        ),
        SizedBox(width: 10,),
        CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 20,
            child: Icon(Icons.person,)),
        SizedBox(width: 10,),
        Text(user.name,  style: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,)
        )  ],
    );
  }
}
