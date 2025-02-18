
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solvodev_mobile_structure/app/core/styles/main_colors.dart';
import 'package:solvodev_mobile_structure/common/utils/coloors.dart';

class ThemeStyles {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    backgroundColor: Coloors.backgroundLight,
    scaffoldBackgroundColor: Coloors.backgroundLight,
    // extensions: [CustomThemeExtension.lightMode],
    appBarTheme: const AppBarTheme(
      backgroundColor: Coloors.greenLight,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
    ),
    unselectedWidgetColor: Color(0xFFB3D9D2),

    // labelColor:Colors.white,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.backgroundLight,
      modalBackgroundColor: Coloors.backgroundLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: Coloors.backgroundLight,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Coloors.greenDark,
      foregroundColor: Colors.white,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Coloors.greynDark,
      tileColor: Coloors.backgroundLight,
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(Color(0xFF83939C)),
      trackColor: MaterialStatePropertyAll(Color(0xFFDADFE2)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: MainColors.primaryColor,
      selectionColor: MainColors.primaryColor,
      selectionHandleColor: MainColors.primaryColor,
    ),
    splashColor: MainColors.primaryColor,
    highlightColor: MainColors.primaryColor,
    buttonTheme: ButtonThemeData(
      splashColor: MainColors.primaryColor,
      highlightColor: MainColors.primaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: MainColors.primaryColor,
        primary: MainColors.primaryColor,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: MainColors.primaryColor),
    extensions: <ThemeExtension<dynamic>>[
      const ColorsStyles(
        backgroundColor: LightColors.backgroundColor,
        circleColor: LightColors.circleColor,
        textColor: LightColors.textColor,
        disableColor: LightColors.disableColor,
        errorColor: LightColors.errorColor,
        infoColor: LightColors.infoColor,
        inputColor: LightColors.inputColor,
        successColor: LightColors.successColor,
        warningColor: LightColors.warningColor,
        shadowColor: LightColors.shadowColor,
        chatPageBgColor: LightColors.chatPageBgColor,
        chatTextFieldBg: LightColors.chatTextFieldBg,
        chatPageDoodleColor: LightColors.chatPageDoodleColor,
        langHightlightColor: LightColors.langHightlightColor,
        langBgColor: LightColors.langBgColor,
        profilePageBg: LightColors.profilePageBg,
        photoIconColor: LightColors.photoIconColor,
        photoIconBgColor: LightColors.photoIconBgColor,
        senderChatCardBg: LightColors.senderChatCardBg,
        receiverChatCardBg: LightColors.receiverChatCardBg,
        blueColor: LightColors.blueColor,
        greyColor: LightColors.greyColor,
        authAppbarTextColor: LightColors.authAppbarTextColor,

        //fullLogo: LightColors.fullLogo,
        //iconLogo: LightColors.iconLogo,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: DarkColors.backgroundColor,
    primaryColor: MainColors.primaryColor,
      // backgroundColor: Coloors.backgroundDark,
      scaffoldBackgroundColor: Coloors.backgroundDark,
      // extensions: [MainColors.],
    appBarTheme:  AppBarTheme(
      backgroundColor: Coloors.backgroundDark,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Coloors.greynDark,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color:Coloors.greynDark,
      )
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Coloors.greenDark,
          width: 2,
        ),
      ),
      unselectedLabelColor: Coloors.greynDark,
      labelColor: Coloors.greenDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Coloors.greenDark,
        foregroundColor: Coloors.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.greyBackground,
      modalBackgroundColor: Coloors.greyBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: Coloors.greyBackground,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Coloors.greenDark,
      foregroundColor: Colors.white,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Coloors.greynDark,
      tileColor: Coloors.backgroundDark,
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(Coloors.greynDark),
      trackColor: MaterialStatePropertyAll(Color(0xFF344047)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: MainColors.primaryColor,
      selectionColor: MainColors.primaryColor,
      selectionHandleColor: MainColors.primaryColor,
    ),
    splashColor: MainColors.primaryColor,
    highlightColor: MainColors.primaryColor,
    buttonTheme: ButtonThemeData(
      splashColor: MainColors.primaryColor,
      highlightColor: MainColors.primaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: MainColors.primaryColor,
        primary: MainColors.primaryColor,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: MainColors.primaryColor),
    extensions: <ThemeExtension<dynamic>>[
      const ColorsStyles(
        backgroundColor: DarkColors.backgroundColor,
        circleColor: DarkColors.circleColor,
        textColor: DarkColors.textColor,
        disableColor: DarkColors.disableColor,
        errorColor: DarkColors.errorColor,
        infoColor: DarkColors.infoColor,
        inputColor: DarkColors.inputColor,
        successColor: DarkColors.successColor,
        warningColor: DarkColors.warningColor,
        shadowColor: DarkColors.shadowColor,
        authAppbarTextColor: DarkColors.authAppbarTextColor,
        chatPageDoodleColor: DarkColors.chatPageDoodleColor,
        chatPageBgColor: DarkColors.chatPageBgColor,
        chatTextFieldBg: DarkColors.chatTextFieldBg,
        photoIconBgColor:DarkColors.photoIconBgColor,
        photoIconColor: DarkColors.photoIconColor,
        profilePageBg: DarkColors.profilePageBg,
        senderChatCardBg: DarkColors.senderChatCardBg,
        receiverChatCardBg: DarkColors.receiverChatCardBg,
        langBgColor: DarkColors.langBgColor,
        langHightlightColor: DarkColors.langHightlightColor,
        blueColor: DarkColors.blueColor,
        greyColor: DarkColors.greColor,


        //fullLogo: DarkColors.fullLogo,
        //iconLogo: DarkColors.iconLogo,
      ),
    ],
  );
}
