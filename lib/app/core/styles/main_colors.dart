import 'package:flutter/material.dart' as materialColors;
import 'package:flutter/material.dart';

class MainColors {
  static Color? backgroundColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.backgroundColor;
  static Color? greyColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.greyColor;
  static Color? langBgColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.langBgColor;
  static Color? langHightlightColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.langHightlightColor;
  static Color? authAppbarTextColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.authAppbarTextColor;
  static Color? photoIconBgColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.photoIconBgColor;
  static Color? photoIconColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.photoIconColor;
  static Color? profilePageBg(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.profilePageBg;
  static Color? chatTextFieldBg(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.chatTextFieldBg;
  static Color? chatPageBgColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.chatPageBgColor;
  static Color?  chatPageDoodleColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?. chatPageDoodleColor;
  static Color? shadowColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.shadowColor;
  static Color? textColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.textColor;
  static Color? inputColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.inputColor;
  static Color? disableColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.disableColor;
  static Color? infoColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.infoColor;
  static Color? errorColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.errorColor;
  static Color? successColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.successColor;
  static Color? warningColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.warningColor;
  static Color? circleColor(BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.circleColor;
  static Color? senderChatCardBg (BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.senderChatCardBg;
  static Color? receiverChatCardBg (BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.receiverChatCardBg;
  static Color? blueColor (BuildContext context) => Theme.of(context).extension<ColorsStyles>()?.blueColor;



  static const Color primaryColor = materialColors.Color(0xFF25D366);
  static const Color secondColor = materialColors.Color(0xFF5A4500);
  static const Color whiteColor = materialColors.Colors.white;
  static const Color blackColor = materialColors.Color(0xFF333232);
  static const Color transparentColor = materialColors.Colors.transparent;
  //static const Color circleColor = materialColors.Color(0xFF333232);

  static const primaryGradientColor = LinearGradient(
    colors: [primaryColor, Color(0xFF25D366),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const secondGradientColor = LinearGradient(
    begin: Alignment(1.00, -0.02),
    end: Alignment(-1, 0.02),
    colors: [Color(0xFFFF8125), Color(0xFFFF5449)],
  );
}

class LightColors {
  static const Color backgroundColor = materialColors.Color(0xFFFFFFFF);
  static const Color chatPageBgColor = materialColors. Color(0xFFEFE7DE);
  static const Color circleColor = materialColors.Color(0xFF25D366);
  static const Color shadowColor = materialColors.Color(0xFFDADADA);
  static const Color textColor = materialColors.Color(0xFF444444);
  static const Color inputColor = materialColors.Color(0xFFF7F7F7);
  static const Color disableColor = materialColors.Color(0xFF9E9E9E);
  static const Color infoColor = materialColors.Color(0xFF008FFF);
  static const Color errorColor = materialColors.Color(0xFFFF5151);
  static const Color warningColor = materialColors.Color(0xFFF59709);
  static const Color successColor = materialColors.Color(0xFF02BD4D);
  static const Color photoIconBgColor = materialColors.Color(0xFFF1F1F1);
  static const Color chatTextFieldBg = materialColors.Colors.white;
  static const Color langBgColor = materialColors.Color(0xFFF7F8FA);
  static const Color authAppbarTextColor = materialColors.Color (0xFF008069);
  static const Color langHightlightColor= materialColors.Color(0xFFE8E8ED);
  static const Color blueColor = materialColors.Color(0xFF027EB5);
  static const Color greyColor= materialColors.Color(0xFF667781);
  static const Color chatPageDoodleColor = materialColors.Colors.white70;
  static const Color senderChatCardBg = materialColors.Color(0xFFE7FFDB);
  static const Color photoIconColor = materialColors.Color(0xFF9DAAB3);
  static const Color receiverChatCardBg = materialColors.Color(0xFFFFFFFF);
  static const Color profilePageBg = materialColors.Color(0xFFF7F8FA);


// static const String fullLogo = LogosAssetsConstants.lightFullLogo;
  // static const String iconLogo = LogosAssetsConstants.lightIconLogo;
}

class DarkColors {
  static const Color backgroundColor = materialColors.Color(0xFF181A21);
  static const Color chatPageBgColor = materialColors. Color(0xFF081419);
  static const Color circleColor = materialColors.Color(0xFF00A884);
  static const Color shadowColor = materialColors.Color(0xFF0A0A0A);
  static const Color textColor = materialColors.Color(0xFFFFFFFF);
  static const Color inputColor = materialColors.Color(0xFF1E222B);
  static const Color disableColor = materialColors.Color(0xFFA39E9E);
  static const Color infoColor = materialColors.Color(0xFF45ADFF);
  static const Color errorColor = materialColors.Color(0xFFFF7575);
  static const Color warningColor = materialColors.Color(0xFFF59709);
  static const Color successColor = materialColors.Color(0xFF02BD4D);
  static const Color photoIconBgColor = materialColors.Color(0xFF283339);
  static const Color chatTextFieldBg = materialColors.Color(0xFF202C33);
  static const Color langBgColor = materialColors.Color(0xFF182229);
  static const Color authAppbarTextColor = materialColors.Color (0xFF008069);
  static const Color langHightlightColor= materialColors.Color(0xFF09141A);
  static const Color blueColor = materialColors.Color(0xFF53BDEB);
  static const Color greColor= materialColors.Color(0xFF8696A0);
  static const Color chatPageDoodleColor = materialColors.Color(0xFF172428);
  static const Color senderChatCardBg = materialColors.Color(0xFF005C4B);
  static const Color photoIconColor = materialColors.Color(0xFF61717B);
  static const Color receiverChatCardBg =  materialColors.Color(0xFF202C33);
  static const Color profilePageBg = materialColors.Color(0xFF0B141A);

//static const String fullLogo = LogosAssetsConstants.darkFullLogo;
  //static const String iconLogo = LogosAssetsConstants.darkIconLogo;
}

@immutable
class ColorsStyles extends ThemeExtension<ColorsStyles> {
  const ColorsStyles({
    required this.backgroundColor,
    required this.circleColor,
    required this.disableColor,
    required this.textColor,
    required this.infoColor,
    required this.errorColor,
    required this.warningColor,
    required this.successColor,
    required this.shadowColor,
    required this.inputColor,
    required this.chatPageBgColor,
    required this.greyColor,
    required this.langBgColor,
    required this.langHightlightColor,
    required this.authAppbarTextColor,
    required this.photoIconBgColor,
    required this.photoIconColor,
    required this.profilePageBg,
    required this.chatTextFieldBg,
    required this.chatPageDoodleColor,
    required this.blueColor,
    required this.senderChatCardBg,
    required this.receiverChatCardBg,

    // required this.fullLogo,
    // required this.iconLogo,
  });

  final Color? backgroundColor;
  final Color? circleColor;
  final Color? disableColor;
  final Color? textColor;
  final Color? infoColor;
  final Color? errorColor;
  final Color? warningColor;
  final Color? successColor;
  final Color? shadowColor;
  final Color? inputColor;
  final Color? chatPageBgColor;
  final Color? greyColor;
  final Color? langBgColor;
  final Color? langHightlightColor;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;
  final Color? profilePageBg;
  final Color? chatTextFieldBg;
  final Color? chatPageDoodleColor;
  final Color? blueColor ;
  final Color? senderChatCardBg;
  final Color? receiverChatCardBg;


  // final String? fullLogo;
  //final String? iconLogo;

  @override
  ColorsStyles copyWith({
    Color? backgroundColor,
    Color? circleColor,
    Color? disableColor,
    Color? textColor,
    Color? infoColor,
    Color? warningColor,
    Color? errorColor,
    Color? successColor,
    Color? shadowColor,
    Color? inputColor,
    Color? unSelectedColor,
    Color? cardColor,
    Color? chatPageBgColor,
    Color? chatTextFieldBg,
    Color? chatPageDoodleColor,
    Color? langHightlightColor,
    Color? greyColor,
    Color? bluelight,
    Color? senderChatCardBg,
    String? logo,
    Color? receiverChatCardBg,
    Color? authAppbarTextColor,
    Color? photoIconBgColor,

  }) {
    return ColorsStyles(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      chatPageBgColor: chatPageBgColor ?? this.chatPageBgColor,
      circleColor: circleColor ?? this.circleColor,
      disableColor: disableColor ?? this.disableColor,
      textColor: textColor ?? this.textColor,
      infoColor: infoColor ?? this.infoColor,
      warningColor: warningColor ?? this.warningColor,
      errorColor: errorColor ?? this.errorColor,
      successColor: successColor ?? this.successColor,
      inputColor: inputColor ?? this.inputColor,
      shadowColor: shadowColor ?? this.shadowColor,
      profilePageBg: profilePageBg ?? this.profilePageBg,
      chatTextFieldBg: chatTextFieldBg ?? this.chatTextFieldBg,
      chatPageDoodleColor: chatPageDoodleColor ?? this.chatPageDoodleColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      langHightlightColor: langHightlightColor ?? this.langHightlightColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: bluelight ?? this.blueColor,
      langBgColor: langBgColor ?? this.langBgColor,
      senderChatCardBg: senderChatCardBg ?? this.senderChatCardBg,
      receiverChatCardBg: receiverChatCardBg ?? this.receiverChatCardBg,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      //fullLogo: fullLogo ?? fullLogo,
      // iconLogo: iconLogo ?? iconLogo,
    );
  }

  @override
  ColorsStyles lerp(ThemeExtension<ColorsStyles>? other, double t) {
    if (other is! ColorsStyles) {
      return this;
    }
    return ColorsStyles(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      chatPageBgColor : Color.lerp(chatPageBgColor, other.chatPageBgColor, t),
      chatTextFieldBg : Color.lerp(chatTextFieldBg, other.chatTextFieldBg, t),
      chatPageDoodleColor : Color.lerp(chatPageDoodleColor, other.chatPageDoodleColor, t),
      circleColor: Color.lerp(circleColor, other.circleColor, t),
      disableColor: Color.lerp(disableColor, other.disableColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      infoColor: Color.lerp(infoColor, other.infoColor, t),
      warningColor: Color.lerp(warningColor, other.warningColor, t),
      errorColor: Color.lerp(errorColor, other.errorColor, t),
      successColor: Color.lerp(successColor, other.successColor, t),
      inputColor: Color.lerp(inputColor, other.inputColor, t),
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
      langHightlightColor: Color.lerp(langHightlightColor, other.langHightlightColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBgColor: Color.lerp(langBgColor, other.langBgColor, t),
      senderChatCardBg: Color.lerp(senderChatCardBg, other.senderChatCardBg, t),
      receiverChatCardBg: Color.lerp(receiverChatCardBg, other.receiverChatCardBg, t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      profilePageBg: Color.lerp(profilePageBg, other.profilePageBg, t),


      //fullLogo: fullLogo,
      //iconLogo: iconLogo,
    );
  }
}
