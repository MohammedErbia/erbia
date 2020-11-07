import 'package:flutter/material.dart';

import 'Size_Confg.dart';

const globalColor = Color(0xffff6969);
const backgroundColor = Color(0xfff1f0f6);
const globalGrey = Colors.grey;
const globalWhite = Colors.white;
const globalBlack = Colors.white;
const globalText = Color(0xff515c6f);
const globalShadow = Color(0xff727c8e);


const KPrimaryColor = Colors.orange;
const KPrimaryLightColor = Colors.orangeAccent;
const KPrimarygreyColor = Colors.grey;

const KPrimaryGradientColor = LinearGradient(
  colors: [Colors.orangeAccent, Colors.deepOrange],
  begin: Alignment.center,
  end: Alignment.center,
);




const KScandryColor = Colors.deepOrange;

const KTextColore = Colors.white;

const KAnimationDuration = Duration(milliseconds: 200);

const icon = 'assets/icons';
const imagePath = 'assets/images';
const iconCategory = 'assets/categoryIcon';

final headingStyle = TextStyle(
    color: Colors.black,
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    height: 1.5);

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  // enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: OutlineInputBorder(),
  // disabledBorder: outlineInputBorder()
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: KPrimaryColor, width: 2),
  );
}



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
