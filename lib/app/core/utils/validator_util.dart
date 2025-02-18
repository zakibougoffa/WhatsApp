import 'dart:io';

import 'package:string_validator/string_validator.dart';
import 'package:solvodev_mobile_structure/app/core/constants/strings_assets_constants.dart';

class ValidatorUtil {
  static String? nullableValidation(var x, {String? customMessage}) {
    if (x == null) return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    return null;
  }

  static String? imageFileValidation(File? x, int maxSize, {String? customMessage}) {
    if (nullableValidation(x) == null) {
      final bytes = x?.readAsBytesSync().lengthInBytes ?? 0;
      final kb = bytes / 1024;
      final mb = kb / 1024;
      return mb < maxSize ? null : customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? emailValidation(String email, {String? customMessage}) {
    if (!isEmail(email)) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? stringLengthValidation(String name, int length, {String? customMessage}) {
    if (!isLength(name, length)) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? emptyValidation(String name, {String? customMessage}) {
    if (!isLength(name, 1)) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? numericValidation(String number, {String? customMessage}) {
    if (!isFloat(number) || !isLength(number, 1)) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? arrayEmptyValidation(dynamic array, {String? customMessage}) {
    if (array.isEmpty) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? phoneValidation(String phone, {String? customMessage}) {
    if (RegExp(r"^[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$").hasMatch(phone) != true ||
        phone.length != 9 ||
        !(phone[0] == '6' || phone[0] == '5' || phone[0] == '7')) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }

    return null;
  }

  static String? passwordValidation(String password, {String? customMessage}) {
    if (!isLength(password, 8)) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? passwordConfirmationValidation(String confPassword, String password, {String? customMessage}) {
    if (!equals(password, confPassword)) {
      return customMessage ?? StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }
}
