
import 'package:flutter/material.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/common/extension/custom_theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;


  const CustomIconButton({Key? key,
    required this.onTap,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap,
        splashColor: Colors.transparent,
        splashRadius: 22,
        iconSize: iconSize?? 22,
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(
          maxHeight:  minWidth?? 45,
          minWidth: minWidth??  45,
          ),
        icon: Icon(
          Icons.more_vert,
          color: iconColor ?? Theme.of(context).appBarTheme.iconTheme?.color,));
  }
}
