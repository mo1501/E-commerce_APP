import 'package:flutter/material.dart';

const kPrimaryColor = Color(0x1E524E);
const kPrimaryLightColor = Color.fromARGB(0, 46, 116, 110);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0x1E524E), Color.fromARGB(0, 46, 122, 116)],
);
const kSecondaryColor = Color(0xF6D183);
const kTextColor = Colors.black;

const KAnimationDuration = Duration(
  milliseconds: 200,
);
const defaultDuration = Duration(milliseconds: 250);
// Form Errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
