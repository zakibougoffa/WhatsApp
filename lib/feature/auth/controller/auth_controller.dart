import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solvodev_mobile_structure/feature/auth/repository/auth_respository.dart';


final authControllerProvider  = Provider(
    (ref){
      final authRespository = ref.watch(authRepositoryProvider);
      return AuthController(authRespository: authRespository);
    },
);
class AuthController {
  final AuthRespository authRespository;
  AuthController({
    required this.authRespository
});
  void sendSmsCode({
    required BuildContext context,
    required String phoneNumber,
  }){
    authRespository.sendSmsCode(
        context: context,
        phoneNumber: phoneNumber);
  }
}