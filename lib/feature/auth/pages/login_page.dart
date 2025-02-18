// import 'package:country_picker/country_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:solvodev_mobile_structure/common/extension/custom_theme_extension.dart';
// import 'package:solvodev_mobile_structure/common/utils/coloors.dart';
// import 'package:solvodev_mobile_structure/common/widgets/custom_elevated-button.dart';
// import 'package:solvodev_mobile_structure/feature/auth/widgets/custom_text_field.dart';
//
//
// import '../../../common/helper/show_alert_dialog.dart';
//
// import '../widgets/custom_icon_button.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   late TextEditingController countryNameController;
//   late TextEditingController countryCodeController;
//   late TextEditingController phoneNumberController;
//   sendCodeToPhone(){
//     final phone = phoneNumberController.text;
//     final name = countryNameController.text;
//     if(phone.isEmpty){
//       return showAlertDilog(
//           context: context,
//           message: 'Please enter your phone number',
//       );
//     }
//     if(phone.length<9){
//       return showAlertDilog(context: context, message: "The phone number you entred is too short for the country: $name.\n\nInclude your area code if you haven\'t");
//     }
//     if(phone.length>10){
//       return showAlertDilog(
//           context: context,
//           message: 'The phone number you entered is too long for the country: $name',
//       );
//     }
//   }
//   @override
//   void initState() {
//     countryNameController = TextEditingController(text: 'Algeria');
//     countryCodeController = TextEditingController(text: '213');
//     phoneNumberController = TextEditingController();
//     super.initState();
//   }
//   showCountryPickerBottomSheet() {
//     showCountryPicker(
//       context: context,
//       showPhoneCode: true,
//       favorite: ['ALG'],
//       countryListTheme: CountryListThemeData(
//         bottomSheetHeight: 600,
//         backgroundColor: Theme.of(context).backgroundColor,
//         flagSize: 22,
//         borderRadius: BorderRadius.circular(20),
//         textStyle: TextStyle(color: context.theme.greyColor),
//         inputDecoration: InputDecoration(
//           labelStyle: TextStyle(color: context.theme.greyColor),
//           prefixIcon: const Icon(
//             Icons.language,
//             color: Coloors.greenDark,
//           ),
//           hintText: 'Search country by code or name',
//           enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(
//               color: context.theme.greyColor!.withOpacity(.2),
//             ),
//           ),
//           focusedBorder: const UnderlineInputBorder(
//             borderSide: BorderSide(
//               color: Coloors.greenDark,
//             ),
//           ),
//         ),
//       ),
//       onSelect: (country) {
//         countryNameController.text = country.name;
//         countryCodeController.text = country.phoneCode;
//       },
//     );
//   }
//
//
//   @override
//   void dispose() {
//     countryNameController.dispose();
//     countryCodeController.dispose();
//     phoneNumberController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:   AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 0,
//         title:  Text('Enter your phone number', style: TextStyle(color: context.theme.authAppbarTextColor),),
//         centerTitle: true,
//         actions: [
//           CustomIconButton(
//             onTap: () {  },
//             icon: Icons.more_vert,
//
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
//             child: RichText(
//               textAlign: TextAlign.center,
//                 text: TextSpan(
//               text: 'WhatsApp will need to verify your phone number',
//               style: TextStyle(
//                 color: context.theme.greyColor,
//                 height: 1.5,
//               ),
//               children: [
//               TextSpan(
//               text: "What's my number?",
//               style: TextStyle(
//                 color: context.theme.blueColor,
//               ),
//             ),
//
//               ]
//             )),
//
//           ),
//           const SizedBox(height: 10,),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50),
//             child: CustomTextField(
//             onTap: showCountryPickerBottomSheet,
//               controller: countryNameController,
//               readOnly: true,
//               suffixIcon: const Icon(Icons.arrow_drop_down, color: Coloors.greenDark,),
//     ),
//           ),
//           const SizedBox(height: 10,),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50),
//             child: Row(
//               children: [
//                 SizedBox(width: 70, child: CustomTextField(
//                   onTap: showCountryPickerBottomSheet,
//                   controller: countryCodeController,
//                   prefixText: '+',
//                   readOnly: true,
//                 ),),
//                 const SizedBox(width: 10),
//                 Expanded(child: CustomTextField(
//                   controller: phoneNumberController,
//                   hintText: 'phone number',
//                    textAlign: TextAlign.left,
//                    keyboardType: TextInputType.number,))
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Text(
//             'Carrier charges may apply',
//             style: TextStyle(
//               color: context.theme.greyColor,
//             ),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: CustomElevatedButton(
//         onPressed:sendCodeToPhone,
//          text: 'NEXT',
//       buttonWidth: 90,),
//
//     );
//   }
// }
//
