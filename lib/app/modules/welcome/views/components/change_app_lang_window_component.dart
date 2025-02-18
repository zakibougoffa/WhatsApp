
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/checked_element_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/icon_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/components/buttons/primary_button_component.dart';
import 'package:solvodev_mobile_structure/app/core/constants/get_builders_ids_constants.dart';
import 'package:solvodev_mobile_structure/app/core/constants/icons_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/constants/strings_assets_constants.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/app/core/styles/text_styles.dart';
import 'package:solvodev_mobile_structure/app/modules/config_controller.dart';


class ChangeAppLangWindowComponent extends StatelessWidget {
  const ChangeAppLangWindowComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: MainColors.backgroundColor(context),
            borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(30.r)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  StringsAssetsConstants.changeLanguage,
                  style: TextStyles.mediumLabelTextStyle(context),
                ),
              ),
              SizedBox(height: 20.h),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: GetBuilder<ConfigController>(
                            id: GetBuildersIdsConstants.profileAppLangWindowList,
                            builder: (logic) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CheckedElementComponent(
                                          title: 'العربية',
                                          isChecked: logic.selectedAppLang == 'ar',
                                          isExpanded: true,
                                          onTap: () => logic.changeSelectedAppLang('ar'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CheckedElementComponent(
                                          title: 'English',
                                          isChecked: logic.selectedAppLang == 'en',
                                          isExpanded: true,
                                          onTap: () => logic.changeSelectedAppLang('en'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CheckedElementComponent(
                                          title: 'Français',
                                          isChecked: logic.selectedAppLang == 'fr',
                                          isExpanded: true,
                                          onTap: () => logic.changeSelectedAppLang('fr'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15.h),
                                  Divider(
                                    color: MainColors.inputColor(context),
                                  ),
                                ],
                              );
                            }),
                      ),
                      SizedBox(height: 15.h),
                      GetBuilder<ConfigController>(
                          id: GetBuildersIdsConstants.profileAppLangWindowButton,
                          builder: (logic) {
                            return PrimaryButtonComponent(
                              text: StringsAssetsConstants.save,
                              isLoading: logic.saveAppLangLoading,
                              onTap: () => logic.saveAppLang(),
                            );
                          }),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButtonComponent(
                onTap: () => Get.back(),
                iconLink: IconsAssetsConstants.closeIcon,
                buttonWidth: 23.r,
                buttonHeight: 23.r,
                iconWidth: 15.r,
                iconHeight: 15.r,
                backgroundColor: MainColors.disableColor(context)?.withOpacity(0.5),
                iconColor: MainColors.whiteColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
