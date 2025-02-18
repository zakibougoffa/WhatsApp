import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solvodev_mobile_structure/app/core/components/animations/animator_component.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/core/styles/text_styles.dart';

class TextInputComponent extends StatelessWidget {
  FocusNode? focusNode;
  FocusNode? nextNode;
  TextEditingController? controller;
  TextInputType? textInputType;
  String? label;
  String? hint;
  String? error;
  Widget? prefix;
  Widget? suffix;
  bool? obscureText;
  bool? isLabelOutside;
  bool? readOnly;
  Function(BuildContext)? onTap;
  bool? filled;
  bool? autoErrorMessage;
  double? borderRadius;
  EdgeInsetsGeometry? contentPadding;
  final bool? autoFocus;


  int? maxLines;

  Function(String value)? onChange;

  Function(String value)? validate;

  bool? ltrDirection;
  TextInputFormatter? textInputFormatter;
  int? maxLength;
  bool? count;
  final Function(String value)? onSubmit;
  TextInputAction? textInputAction;
  final BorderSide? border;

  TextInputComponent(
      {super.key,
      this.focusNode,
      this.controller,
      this.label,
      this.validate,
      this.hint,
      this.filled,
      this.onTap,
      this.isLabelOutside = false,
      this.readOnly = false,
      this.textInputType,
      this.nextNode,
      this.error,
      this.prefix,
      this.suffix,
      this.obscureText,
      this.autoErrorMessage = false,
      this.onChange,
      this.maxLines,
      this.ltrDirection,
      this.maxLength,
      this.count,
      this.borderRadius,
      this.contentPadding,
      this.onSubmit,
      this.textInputFormatter,
      this.textInputAction,
      this.border, this.autoFocus, required TextAlign textAlign
      });
  @override
  Widget build(BuildContext context) {
    return AnimatorComponent(
      time: const Duration(milliseconds: 300),
      child: Column(
        children: [
          (isLabelOutside != null && isLabelOutside == true)
              ? SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 5.h, start: 14.w),
                        child: Text(
                          label == null ? "" : label!,
                          style: TextStyles.mediumBodyTextStyle(context),
                        ),
                      )
                    ],
                  ),
                )
              : Container(),
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              textAlign: ltrDirection == true ? TextAlign.end : TextAlign.start,
              maxLength: maxLength,
              validator: (value) => validate!(value!),
              maxLines: maxLines ?? 1,
              onTap: onTap == null ? null : () => onTap!(context),
              readOnly: readOnly ?? false,
              obscureText: obscureText ?? false,
              style: TextStyles.mediumBodyTextStyle(context),
              focusNode: focusNode,
              controller: controller,
              keyboardType: textInputType ?? TextInputType.text,
              textInputAction: textInputAction ?? TextInputAction.next,
              cursorColor: MainColors.primaryColor,
              inputFormatters: textInputFormatter != null ? [textInputFormatter!] : null,
              decoration: InputDecoration(
                counterText: '',
                hintStyle: TextStyles.mediumBodyTextStyle(context).copyWith(
                  color: MainColors.disableColor(context),
                ),
                contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                errorStyle: TextStyles.smallBodyTextStyle(context).copyWith(
                  color: MainColors.errorColor(context),
                  fontSize: 13.sp,
                  overflow: TextOverflow.fade,
                ),
                errorMaxLines: 2,
                fillColor: MainColors.inputColor(context),
                filled: filled ?? true,
                hintText: hint ?? "",
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
                  borderSide: BorderSide(
                    color: MainColors.errorColor(context)!,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
                  borderSide: border ??
                      BorderSide(
                        color: MainColors.transparentColor,
                        width: 1,
                      ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
                  borderSide: border ??
                      BorderSide(
                        color: MainColors.disableColor(context)!.withOpacity(0.2),
                        width: 1,
                      ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
                  borderSide: BorderSide(
                    color: MainColors.primaryColor,
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
                  borderSide: border ??
                      BorderSide(
                        color: MainColors.transparentColor,
                        width: 1,
                      ),
                ),
                suffixIconConstraints: BoxConstraints(
                  minWidth: 25.w,
                  minHeight: 25.w,
                ),
                prefixIcon: prefix != null
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          prefix ?? Container(),
                        ],
                      )
                    : null,
                suffixIcon: suffix != null
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          suffix ?? Container(),
                        ],
                      )
                    : null,
              ),
              onFieldSubmitted: (value) {
                if (onSubmit != null) onSubmit!(value);
                nextNode == null ? FocusScope.of(context).unfocus() : FocusScope.of(context).requestFocus(nextNode);
              },
              onChanged: onChange ?? null,
            ),
          ),
        ],
      ),
    );
  }
}
