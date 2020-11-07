import 'package:erbia/Constans.dart';
import 'package:flutter/material.dart';

import '../Size_Confg.dart';
import 'Custom_shap.dart';

class CategoryCard extends StatelessWidget {

  final String image;
  final Function press;

  CategoryCard({
    Key key,@required this.image,@required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        // alignment: Alignment.topCenter,
        children: <Widget>[
          // TODO :This is custom Shape thats why we need to use ClipPath
          Positioned(
            child: Container(
              child: ClipPath(
                clipper: CategoryCustomShape(),
                child: Container(
                  padding: EdgeInsets.all(120),
                  ///edit color
                  color:  backgroundColor,
                ),
              ),
            ),
          ),
          //image coffee
          Positioned(
            top: 0,
            right: 0,
            height: getProportionateScreenHeight(100),
            width: getProportionateScreenWidth(100),
            child: Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2),),
              child: AspectRatio(
                aspectRatio: 5,
                child: Image.asset(image,fit: BoxFit.fill),
              ),
              // Hero(
              //     tag: image,
              //     transitionOnUserGestures: true,
              //     child:
              // ),
            ),
          ),

          // TODO : button favert and add to card
          Positioned(
            top: getProportionateScreenHeight(30),
            left: getProportionateScreenWidth(10),
            child: Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2),),
              child: Column(
                children: [
                  Container(
                    height: getProportionateScreenHeight(28.00),
                    width: getProportionateScreenWidth(28.00),
                    decoration: BoxDecoration(
                      color:globalWhite,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.00,3.00),
                          color: Color(0xff000000).withOpacity(0.27),
                          blurRadius: 6,
                        ),
                      ], borderRadius: BorderRadius.all(Radius.elliptical(46.00, 45.00)),
                    ),
                    child: Icon(Icons.add_shopping_cart),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10),),
                  Container(
                    height: getProportionateScreenHeight(28.00),
                    width: getProportionateScreenWidth(28.00),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.00,3.00),
                          color: Color(0xff000000).withOpacity(0.27),
                          blurRadius: 6,
                        ),
                      ], borderRadius: BorderRadius.all(Radius.elliptical(46.00, 45.00)),
                    ),
                    child: Icon(Icons.favorite,color: Colors.red,),
                  ),
                ],
              ),
            ),
          ),

          // TODO :details price and Kg and nname
          Positioned(
            bottom: getProportionateScreenHeight(5),
            right: getProportionateScreenWidth(10),
            left: getProportionateScreenWidth(10),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "coffee",
                  style: TextStyle(
                      color:globalColor,
                      fontSize: getProportionateScreenHeight(20)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      "15‎₪",
                      style: TextStyle(

                          fontSize: getProportionateScreenHeight(15)
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(50),),
                    new Text(
                      "250 kg",
                      style: TextStyle(
                          fontSize: getProportionateScreenHeight(12)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}