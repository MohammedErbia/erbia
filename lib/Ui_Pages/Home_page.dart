import 'dart:ui';
import 'package:erbia/Componant/Card_Category.dart';
import 'package:erbia/Componant/item_category.dart';
import 'package:erbia/Model/ShoeModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../Constans.dart';
import '../Size_Confg.dart';
import 'Detail_page.dart';
import 'category_page.dart';

class HomePage  extends StatefulWidget {
  static const String routeName = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<String> data = [
    '$imagePath/Image Banner 2.png',
    '$imagePath/Image Banner 3.png',
    '$imagePath/Image Banner 2.png',
    '$imagePath/Image Banner 3.png',
    '$imagePath/Image Banner 2.png',
    '$imagePath/Image Banner 3.png',
  ];

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
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.5,
            child: Stack(
              children: [
                //TODO :- background blur
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: SizeConfig.screenHeight * 0.45 / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      //D6D6D5
                      color: Color.fromRGBO(214, 214, 213, 0.6),
                      //Color.fromRGBO(214, 214, 213, 1)

                      image: DecorationImage(
                          image: ExactAssetImage(data[currentPage]),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fitWidth, //blendMode
                          colorFilter: ColorFilter.linearToSrgbGamma()),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      child: SafeArea(
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(30),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenHeight(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: SizeConfig.screenWidth * 0.83,
                                    height: getProportionateScreenHeight(40),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(237, 241, 246, 0.7),
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: 'Search Product',
                                          hintStyle: TextStyle(
                                              fontSize:
                                              getProportionateScreenWidth(
                                                  13)),
                                          contentPadding: EdgeInsets.all(
                                              getProportionateScreenHeight(8)
                                            // vertical: getProportionateScreenHeight(20),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Colors.grey,
                                            size:
                                            getProportionateScreenHeight(25),
                                          )),
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      debugPrint('hhhh');
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                          getProportionateScreenHeight(10)),
                                      child: SvgPicture.asset(
                                        '$icon/Bell.svg',
                                        color: globalColor,
                                        alignment: Alignment.center,
                                        height: getProportionateScreenHeight(20),
                                        width: getProportionateScreenWidth(20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // TODO :- category item
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: SizeConfig.screenHeight * 0.45 / 2.1,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(214, 214, 213, 0.6),
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                        Radius.circular(getProportionateScreenHeight(40)),
                        bottomRight:
                        Radius.circular(getProportionateScreenHeight(40)),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: getProportionateScreenHeight(50)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            itemCatigory(
                              text: 'Species',
                              press: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return category();
                                },));

                              },
                              image: 'mksrat.png',
                              firstColor: Color(0xffffae4e),
                              lastColor: Color(0xffff7676),
                            ),
                            itemCatigory(
                              text: 'Species',
                              press: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return category();
                                },));
                              },
                              image: 'mksrat.png',
                              firstColor: Color(0xff4efff8),
                              lastColor: Color(0xff76baff),
                            ),
                            itemCatigory(
                              text: 'Species',
                              press: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return category();
                                },));
                              },
                              image: 'mksrat.png',
                              firstColor: Color(0xffb4ff4e),
                              lastColor: Color(0xff2fc145),
                            ),
                            itemCatigory(
                              text: 'Species',
                              press: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return category();
                                },));
                              },
                              image: 'mksrat.png',
                              firstColor: Color(0xff9292ff),
                              lastColor: Color(0xff7bd1db),
                            ),
                            itemCatigory(
                              text: 'Gift',
                              press: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return category();
                                },));
                              },
                              image: 'mksrat.png',
                              firstColor: Colors.red,
                              lastColor: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //TODO :- Slider image
                Positioned(
                  top: SizeConfig.screenHeight * 0.45 / 2.9,
                  child: AnimatedContainer(
                      duration: KAnimationDuration,
                      height: SizeConfig.screenHeight * 0.2,
                      width: SizeConfig.screenWidth,
                      child: Stack(
                        children: [
                          Swiper(
                            autoplay: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            getProportionateScreenHeight(25)))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      getProportionateScreenHeight(25))),
                                  child: Image.asset(
                                    data[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                            onIndexChanged: (page) {
                              setState(() {
                                currentPage = page;
                              });
                            },
                            itemCount: data.length,
                            itemWidth: SizeConfig.screenWidth * 0.95,
                            itemHeight: SizeConfig.screenHeight * 0.2,
                            layout: SwiperLayout.TINDER,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          Positioned(
                            bottom: getProportionateScreenHeight(20),
                            right:
                            SizeConfig.screenWidth / 2 - (data.length * 14),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(10.00),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(data.length, (index) {
                                    return buildDot(index);
                                  }),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: getProportionateScreenWidth(15),
                    left: getProportionateScreenHeight(15)),
                child: Text(
                  'Latest',
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(30),
                  ),
                ),
              ),
            ],
          ),
          //TODO :- in rtl or ltr you need change direction in all Positioned and text :)
          latest_view(),

          List_product(images: images),
        ],
      ),
    );
  }

  AnimatedContainer buildDot(index) {
    return AnimatedContainer(
      duration: KAnimationDuration,
      margin: EdgeInsets.all(5),
      width: currentPage == index ? 14 : 10,
      height: currentPage == index ? 14 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: currentPage == index ? Colors.red : Colors.white),
    );
  }
}

class List_product extends StatelessWidget {

  const List_product({
    Key key,
    @required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GridView.builder(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      physics: NeverScrollableScrollPhysics(),
      // scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: images.length,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: getProportionateScreenWidth(20),
          mainAxisSpacing: getProportionateScreenHeight(20),
          childAspectRatio: getProportionateScreenWidth(300) /
              getProportionateScreenHeight(300)),
      itemBuilder: (context, index) {
        return CategoryCard(
          image: images[index],
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder:
                        (context) => /*detailsProduct(image: images[index],)*/ DetailPage(
                        ShoeModel.list.first)));
          },
        );
      },
    );
  }
}

class latest_view extends StatelessWidget {
  const latest_view({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Container(
        width: SizeConfig.screenWidth * 0.9,
        height: SizeConfig.screenHeight * 0.25,
        decoration: BoxDecoration(
          // color: Color(0xfff1f0f6),
          // border: Border.all(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(10)),
        // decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2)),
        child: Stack(
          children: [
            //MARK:- this is text
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: SizeConfig.screenWidth * 0.9 / 1.5,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      top: getProportionateScreenHeight(25),
                      bottom: getProportionateScreenHeight(50)),
                  child: Text(
                    'For all your Home Needs',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
            ),
            //MARK:- this is image
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                width: SizeConfig.screenWidth * 0.9 / 1.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Image.asset(
                    '$iconCategory/covers.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            //MARK:- this is button see more
            Positioned(
              bottom: getProportionateScreenHeight(20),
              left: getProportionateScreenWidth(20),
              child: Container(
                width: getProportionateScreenWidth(120),
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.00, 8.00),
                      color: Color(0xff727c8e).withOpacity(0.36),
                      blurRadius: 15,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24.00),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'see more',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(12)),
                    ),
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(30),
                      decoration: BoxDecoration(
                        color: globalColor,
                        borderRadius: BorderRadius.circular(24.00),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: getProportionateScreenWidth(15),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
