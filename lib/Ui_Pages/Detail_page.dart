import 'package:erbia/Componant/Card_Category.dart';
import 'package:erbia/Componant/Custom_shap.dart';
import 'package:erbia/Constans.dart';
import 'package:erbia/Model/ShoeModel.dart';
import 'package:flutter/material.dart';
import '../Size_Confg.dart';

 class DetailPage extends StatefulWidget {
  final ShoeModel shoeModel;
  DetailPage(this.shoeModel);
  @override
  _DetailPageState createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor:backgroundColor ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: globalColor,),
        actions: [
          GestureDetector(
            onTap: (){
              print('add to cart ');
            },
            child: Padding(
              padding:   EdgeInsets.all(getProportionateScreenWidth(20)),
              child: Icon(Icons.shopping_cart,color: globalColor,),
            ),
          ),
        ],
      ),
      body: Column(
        children: [

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                child: Stack(
                  children: <Widget>[
                    // MARK : back whit view
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        height: SizeConfig.screenHeight * .45,
                        child: buildBackView()),
                    // MARK : shap gray color
                    Positioned(
                      top:0,
                      left: getProportionateScreenWidth(20),
                      right: getProportionateScreenWidth(20),
                      child: buildShapBackProduct(),
                    ),
                    // MARK : image view
                    Positioned(
                      top: getProportionateScreenWidth(20),
                      left: getProportionateScreenWidth(20),
                      // right: (SizeConfig.screenWidth/2)  /4  ,
                      child:  Image(
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: MediaQuery.of(context).size.height * 0.2,
                        image: AssetImage("${widget.shoeModel.imgPath}"),
                      ),
                      // Hero(
                      //   tag: "${widget.shoeModel.imgPath}",
                      //   child: Image(
                      //     width: MediaQuery.of(context).size.width * 0.70,
                      //     image: AssetImage("${widget.shoeModel.imgPath}"),
                      //   ),
                      // ),
                    ),
                    // MARK : button favert and add to card
                    Positioned(
                      top: getProportionateScreenHeight(20),
                      right: getProportionateScreenWidth(30),
                      child: Container(
                        // decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2),),
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(50.00),
                              width: getProportionateScreenWidth(50.00),
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
                              height: getProportionateScreenHeight(50.00),
                              width: getProportionateScreenWidth(50.00),
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
                    // MARK :details price and name
                    Positioned(
                      top:  MediaQuery.of(context).size.height * 0.2,
                      right: getProportionateScreenWidth(30),
                      left: getProportionateScreenWidth(40),
                      child:  Row(
                        children: [

                          Column(
                            children: [
                              SizedBox(height: getProportionateScreenHeight(30),),
                              Text(
                                 "★★★★★",
                                style: TextStyle(
                                    color:globalColor,
                                    fontSize: getProportionateScreenHeight(20)
                                ),
                              ),
                              SizedBox(height: getProportionateScreenHeight(15),),
                              Container(
                                padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                                decoration: BoxDecoration(
                                  color: globalColor,borderRadius: BorderRadius.circular(14.00),
                                ),
                                child: Text(
                                  "Legumes",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: getProportionateScreenWidth(15),
                                    color:globalWhite,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "قهوة",
                                style: TextStyle(
                                    color:globalColor,
                                    fontSize: getProportionateScreenHeight(45)
                                ),
                              ),
                              Text(
                                "15‎₪",
                                style: TextStyle(
                                    fontSize: getProportionateScreenHeight(34)
                                ),
                              ),
                              Text(
                                "250 kg",
                                style: TextStyle(
                                    fontSize: getProportionateScreenHeight(25)
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                    // MARK : description and other category
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      // top: SizeConfig.screenHeight * .45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Padding(
                              padding:  EdgeInsets.all(getProportionateScreenWidth(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all( getProportionateScreenWidth(8)
                                    ),
                                    child: Text(
                                      "Description",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: getProportionateScreenWidth(14),
                                        color: globalText.withOpacity(0.50),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Cinnamon is an ecologically dense evergreen tree bark that can reach a height of ten to forty meters. Its native Sri Lanka is also cultivated in Southeast Asia, South U.S and Western India. Of the platypus, their legs erect up to 3 - 5 meters, the leaves are successive vehicle, the flowers are small yellow, the fruit is small like cloves",
                                    maxLines: 8,
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      color:globalText,

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: getProportionateScreenWidth(20),bottom: getProportionateScreenHeight(15)),
                            child: Text(
                              "Other Product Like",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: getProportionateScreenWidth(15),
                                color:globalText.withOpacity(0.50),
                              ),
                            ),
                          ),
                          Container(
                              height: SizeConfig.screenWidth > 800 ? SizeConfig.screenHeight * 0.4: SizeConfig.screenHeight * 0.27  ,
                              decoration: BoxDecoration(
                                  color: globalWhite
                              ),
                              child:  _buildBottomCategory()
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          _buildBottom(),
        ],
      ),
    );
  }

  Container buildShapBackProduct() {
    final height =  SizeConfig.screenHeight * .4;
    final width =  SizeConfig.screenWidth * 0.9;
    return Container(
              height:height,
              width: width,
              // decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2)),
              child: ClipPath(
                clipper: CategoryCustomShape()  ,
                child: Container(
                  color: Color(0xfff1f0f6),
        ),
              ),
            );
  }
  Container buildBackView() {
    return Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(getProportionateScreenWidth(50)),
                      bottomLeft: Radius.circular(getProportionateScreenWidth(50)),
                  ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 20,
                      )
                    ]
                ),

              );
  }
  Widget _buildBottom() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(16), horizontal:getProportionateScreenWidth(32)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(getProportionateScreenWidth(30)),
          topRight: Radius.circular(getProportionateScreenWidth(30)),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
            Container(
            height: getProportionateScreenHeight(46.00),
            width: getProportionateScreenWidth(150.00),
            decoration: BoxDecoration(
              color: globalWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.00,5.00),
                  color: globalGrey,
                  blurRadius: 10,
                ),
              ], borderRadius: BorderRadius.circular(23.00),
            ),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ADD TO CART",

                    textAlign: TextAlign.center,
                    style: TextStyle(

                       fontWeight: FontWeight.w700,
                      fontSize: getProportionateScreenWidth(12),
                      color:globalGrey,
                    ),
                  ),
                  CircleAvatar(
                    child: Icon(Icons.arrow_forward_ios_sharp,color: globalWhite ,),backgroundColor: globalGrey,
                    radius:  SizeConfig.screenWidth > 700 ? 25 : 15,
                  ),
                ],
              ),
          ),
            SizedBox(width: getProportionateScreenWidth(10),),
            Container(
            height: getProportionateScreenHeight(46.00),
            width: getProportionateScreenWidth(150.00),
            decoration: BoxDecoration(
              color: globalColor,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1.00,3.00),
                  color: globalColor,
                  blurRadius: 10,
                ),
              ], borderRadius: BorderRadius.circular(23.00),
            ),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ADD TO CART",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontWeight: FontWeight.w700,
                      fontSize: getProportionateScreenWidth(12),
                      color: globalWhite,
                    ),
                  ),
                  CircleAvatar(
                    child: Icon(Icons.arrow_forward_ios_sharp,color: globalColor),backgroundColor: globalWhite,
                    radius:  SizeConfig.screenWidth > 700 ? 25 : 15,

                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
  Widget _buildBottomCategory(){
    return GridView.custom(

        padding: EdgeInsets.all(getProportionateScreenHeight(20)),
        scrollDirection: Axis.horizontal,
        childrenDelegate:  SliverChildListDelegate(
          [
            CategoryCard(image: widget.shoeModel.imgPath,press: (){},)
          ]
        ),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,

            mainAxisSpacing: getProportionateScreenWidth(20),
            childAspectRatio: 1//(getProportionateScreenWidth(40)/getProportionateScreenHeight(70))
        ),

        // itemCount: 20,
        // itemBuilder: (context, index) =>
      //     Container(
      //   decoration: BoxDecoration(
      //     color: globalWhite,
      //     boxShadow: [
      //       BoxShadow(
      //         offset: Offset(0.00, 8.00),
      //         color: globalShadow.withOpacity(0.06),
      //         blurRadius: getProportionateScreenWidth(10),
      //       ),
      //     ],
      //     borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
      //   ),
      //   child: Center(
      //     child: Text(
      //       "${index.toString()}",
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         fontWeight: FontWeight.w500,
      //         fontSize: getProportionateScreenWidth(15),
      //         color: globalText,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

}

/*
* return GridView.builder(
        padding: EdgeInsets.all(getProportionateScreenHeight(20)),

        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: getProportionateScreenWidth(20),
            childAspectRatio: 1//(getProportionateScreenWidth(40)/getProportionateScreenHeight(70))
        ),
        itemCount: 20,
        itemBuilder: (context, index) =>CategoryCard(image: widget.shoeModel.imgPath,press: (){},)
      //     Container(
      //   decoration: BoxDecoration(
      //     color: globalWhite,
      //     boxShadow: [
      //       BoxShadow(
      //         offset: Offset(0.00, 8.00),
      //         color: globalShadow.withOpacity(0.06),
      //         blurRadius: getProportionateScreenWidth(10),
      //       ),
      //     ],
      //     borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
      //   ),
      //   child: Center(
      //     child: Text(
      //       "${index.toString()}",
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         fontWeight: FontWeight.w500,
      //         fontSize: getProportionateScreenWidth(15),
      //         color: globalText,
      //       ),
      //     ),
      //   ),
      // ),
    );
    * */



