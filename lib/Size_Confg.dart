import 'package:flutter/widgets.dart';
class SizeConfig {

  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;


  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;



    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth -
        _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight -
        _safeAreaVertical) / 100;



    // On iPhone 11 the defaultSize = 10 almost
    // So if the screen size increase or decrease then our defaultSize also vary
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }

}
// Get the proportionate height as per screen size
// ignore: missing_return
double getProportionateScreenHeight (double inputHeight){
  double screenHeight = SizeConfig.screenHeight;
// 812 is the layout Width that designer size
  return (inputHeight / 812.0) * screenHeight;
}


// Get the proportionate Width as per screen size
double getProportionateScreenWidth (double inputWidth){
  double screenSize = SizeConfig.screenWidth;
// 375 is the layout Width that designer size
  return (inputWidth / 375.0) * screenSize;
}






