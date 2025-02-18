import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';

class IconButtonComponent extends StatelessWidget {
  const IconButtonComponent({
    Key? key,
    required this.iconLink,
    this.iconColor,
    this.backgroundColor,
    required this.onTap,
    this.iconWidth,
    this.buttonWidth,
    this.buttonHeight,
    this.iconHeight,
    this.borderRadius,
    this.gradientBackgroundColor,
    this.child,
    this.border,
  }) : super(key: key);

  final String iconLink;
  final Color? iconColor;
  final Color? backgroundColor;
  final Function onTap;
  final double? iconWidth;
  final double? iconHeight;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? borderRadius;
  final Gradient? gradientBackgroundColor;
  final Widget? child;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth ?? 40.r,
      height: buttonHeight ?? 40.r,
      // decoration: BoxDecoration(
      //   gradient: gradientBackgroundColor,
      //   color: gradientBackgroundColor == null ? backgroundColor ?? MainColors.backgroundColor(context) : null,
      //   borderRadius: BorderRadius.circular(borderRadius ?? 1000.r),
      //   boxShadow: [
      //     BoxShadow(
      //       color: MainColors.shadowColor(context)!.withOpacity(0.5),
      //       spreadRadius: 0,
      //       blurRadius: 10,
      //       offset: const Offset(0, 0), // changes position of shadow
      //     ),
      //   ],
      //   border: border,
      // ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 1000.r)),
          backgroundColor: MainColors.transparentColor,
          foregroundColor: iconColor ?? MainColors.textColor(context),
        ),
        onPressed: () => onTap(),
        child: Center(
          child: child ??
              SvgPicture.asset(
                iconLink,
                color: iconColor ?? Theme.of(context).appBarTheme.iconTheme?.color,
                fit: BoxFit.fill,
                width: iconWidth ?? 25.r,
              ),
        ),
      ),
    );
  }
}
