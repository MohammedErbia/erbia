import 'dart:ui';
import 'package:flutter/material.dart';
import '../Constans.dart';
import 'Home_page.dart';



// ignore: must_be_immutable
class category extends  StatelessWidget  {
  List<String> images = [
    '$iconCategory/coffee.png',
    '$iconCategory/corn.png',
    '$imagePath/Image Popular Product 1.png',
    '$imagePath/Image Popular Product 2.png',
    '$imagePath/Image Popular Product 3.png',
    '$imagePath/product 1 image.png',
    '$imagePath/ps4_console_blue_1.png',
    '$imagePath/ps4_console_blue_2.png',
    '$imagePath/ps4_console_blue_3.png',
    '$imagePath/ps4_console_blue_4.png',
    '$imagePath/ps4_console_white_1.png',
    '$imagePath/ps4_console_white_2.png',
    '$imagePath/ps4_console_white_3.png',
    '$imagePath/ps4_console_white_4.png',
  ];

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 170,
          backgroundColor: Colors.transparent,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('$iconCategory/covers.jpeg'),
                        fit: BoxFit.cover)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                  child: Container(
                    decoration:
                    BoxDecoration(color: Colors.red.withOpacity(0.5)),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                right: 20,
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
                      GestureDetector(
                        onTap: (){
                          print('Search action');
                        },
                        child: Icon(Icons.search,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          title: Column(
            children: [
              Text(
                "Legumes",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "For all your Home Needs needs",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffffffff).withOpacity(0.70),
                ),
              )
            ],
          ),
        ),
        body: tabs(),
      ),
    );

  }
}

// ignore: must_be_immutable
class tabs extends StatelessWidget {
  List<String> images = [
    '$iconCategory/coffee.png',
    '$iconCategory/corn.png',
    '$imagePath/Image Popular Product 1.png',
    '$imagePath/Image Popular Product 2.png',
    '$imagePath/Image Popular Product 3.png',
    '$imagePath/product 1 image.png',
    '$imagePath/ps4_console_blue_1.png',
    '$imagePath/ps4_console_blue_2.png',
    '$imagePath/ps4_console_blue_3.png',
    '$imagePath/ps4_console_blue_4.png',
    '$imagePath/ps4_console_white_1.png',
    '$imagePath/ps4_console_white_2.png',
    '$imagePath/ps4_console_white_3.png',
    '$imagePath/ps4_console_white_4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
      length: 2,
      child:   Scaffold(
        appBar:   PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child:   Container(
            height: 50.0,
            child: Material(
              color: Colors.white,
              child: TabBar(
                labelColor: globalColor,
                unselectedLabelColor: globalText,
                indicatorColor: globalColor,

                tabs:  [
                  Tab(
                    child: new Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 15,
                        // color:Color(0xffff6969),
                      ),
                    ),
                  ),
                  Tab(
                    child:  Text(
                      "Products",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        // color:Color(0xff727c8e),

                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 15,//getProportionateScreenWidth(15),
                          left: 15),// getProportionateScreenHeight(15)),
                      child:   Text(
                        "Latest",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color:Color(0xff515c6f),
                        ),
                      ),
                    ),
                  ),

                  latest_view(),
                  List_product(images: images),
                ],
              ),
            ),
            SingleChildScrollView(
              child:  List_product(images: images),
            )
          ],
        ),
      ),
    );
  }
}

