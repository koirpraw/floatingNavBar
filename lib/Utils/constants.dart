import 'package:flutter/material.dart';
import 'package:helapy_ios/Theme_Helapy_Ios.dart';
import 'package:helapy_ios/size_config.dart';



final kHeadlineText = TextStyle(
    fontSize: 38,
    fontWeight: FontWeight.w700,
    color: Colors.deepOrange.shade500);

final kSubtitlesText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.blueGrey.shade200);

final kTitle =  HelapyIosTheme.subtitle1
    .override(
  fontFamily: 'Lexend Deca',
  color: Color(0xFF151B1E),
  fontSize: 18,
  fontWeight: FontWeight.w500, fontStyle: FontStyle.normal,
);

final kSubtitle = HelapyIosTheme.bodyText2.override(
fontFamily: 'Lexend Deca',
color: Color(0xFF8B97A2),
fontSize: 14,
fontWeight: FontWeight.normal, fontStyle: FontStyle.normal);

const kBackgroundColor = Color(0xFFF5F5F5);

//from github project
const kPrimaryColor = Color(0xFFFF7643);
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

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

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
