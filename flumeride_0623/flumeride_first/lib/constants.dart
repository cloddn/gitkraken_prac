import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFFFFA34D);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp passValidatorPattern1=
RegExp("[a-zA-Z]");
final RegExp passValidatorPattern2=
RegExp("[0-9]");

const String kEmailNullError = "이메일을 입력하세요.";
const String kInvalidEmailError = "올바른 이메일을 입력하세요.";
const String kPassNullError = "비밀번호를 입력하세요.";
const String kShortPassError = "비밀번호가 너무 짧습니다.";
const String kMatchPassError = "비밀번호가 일치하지 않습니다.";
const String kNamelNullError = "이름을 입력하세요.";
const String kPhoneNumberNullError = "핸드폰 번호를 입력하세요.";
const String kAddressNullError = "주소를 입력하세요.";
const String kMeetPassError= "영문자, 숫자를 조합해 만들어주세요.";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
