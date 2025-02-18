
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solvodev_mobile_structure/app/routes/app_pages.dart';

import 'package:solvodev_mobile_structure/common/helper/show_alert_dialog.dart';



final authRepositoryProvider = Provider((ref) {
  return AuthRespository(
      auth: FirebaseAuth.instance,
      firestore: FirebaseFirestore.instance,
  );

},
);
class AuthRespository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  AuthRespository({
    required this.auth,
    required this.firestore,

});
  void sendSmsCode({
    required BuildContext context,
    required String phoneNumber,
})async{
    try {
      await auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted:(PhoneAuthCredential credential)async{
            await auth.signInWithCredential(credential);
          },
          verificationFailed:(e) {
          showAlertDilog(context:context, message: e.toString());
          },
          codeSent: (smsCodeId, resendSmsCodeId){
            Navigator.of(context).pushNamedAndRemoveUntil(Routes.VERFICATION, (route) => false,
              arguments: {
              'phoneNumber': phoneNumber,
                'smsCodeId': smsCodeId,
              },
            );
      },

          codeAutoRetrievalTimeout: (String smsCodeId){},
      );
    } on FirebaseAuth catch (e){
      showAlertDilog(context: context, message: e.toString());
    }
  }


}