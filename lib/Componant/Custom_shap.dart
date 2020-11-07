import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../Size_Confg.dart';



class CategoryCustomShape  extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width ;
    double cornerSize = getProportionateScreenWidth(18);



    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);

    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);

    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize * 2.2, cornerSize/2);

    path.lineTo(cornerSize, height / 2);
    path.quadraticBezierTo(0, height / 2 + cornerSize, 0, height / 2 + cornerSize *2);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
