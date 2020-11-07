import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constans.dart';
import '../Size_Confg.dart';

class itemCatigory extends StatelessWidget {
  const itemCatigory({
    Key key,
    @required this.press,
    @required this.text,
    @required this.image,
    @required this.firstColor,
    @required this.lastColor,
  }) : super(key: key);

  final Function press;
  final String text, image;
  final Color firstColor, lastColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            width: getProportionateScreenWidth(50),
            height: getProportionateScreenHeight(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: lastColor.withOpacity(0.34),
                  spreadRadius: 4,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                )
              ],
              gradient:   LinearGradient(

                  colors: [firstColor, lastColor],
                  begin:   FractionalOffset(0.0, 0.0),
                  end:   FractionalOffset(0.0, 1.0),

                  stops: [0.0, 1.0],
                  tileMode: TileMode.repeated
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "$iconCategory/$image",
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(7)),
          Text(
            text,
            style: TextStyle(fontSize: getProportionateScreenWidth(14)),
          )
        ],
      ),
    );
  }
}
