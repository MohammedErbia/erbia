
 import 'package:barcode_scanner/barcode_scanning_data.dart';
import 'package:barcode_scanner/scanbot_barcode_sdk.dart';
import 'package:device_preview/device_preview.dart';
import 'package:erbia/Ui_Pages/Home_page.dart';
import 'package:erbia/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // SharedPreferences.setMockInitialValues({});
  runApp(DevicePreview(
    enabled: false,

    // usePreferences: false,
    builder: (context) => MaterialApp(home: test()
      ),
    // ScreenTypeLayout(
    //   mobile: category(),
    //   tablet: category(),
    //   desktop: category(),
    //   watch: category(),
    // ),
  ));
}

// class MyApp extends StatefulWidget {
//   @override
//   _testscanState createState() => new _testscanState();
// }
//
// class _testscanState extends State<testscan> {
//   String barcode = "";
//
//   @override
//   initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//           appBar: new AppBar(
//             title: new Text('Barcode Scanner Example'),
//           ),
//           body: new Center(
//             child: new Column(
//               children: <Widget>[
//                 new Container(
//                   child: new MaterialButton(
//                       onPressed: (){
//                         scan();
//                       }, child: new Text("Scan")),
//                   padding: const EdgeInsets.all(8.0),
//                 ),
//                 new Text(barcode),
//               ],
//             ),
//           )),
//     );
//   }
//
//   Future scan() async {
//     try {
//       String barcode = await BarcodeScanner.scan();
//       setState(() => this.barcode = barcode);
//     } on PlatformException catch (e) {
//       if (e.code == BarcodeScanner.CameraAccessDenied) {
//         setState(() {
//           this.barcode = 'The user did not grant the camera permission!';
//         });
//       }if (e.code == BarcodeScanner.UserCanceled) {
//         setState(() {
//           this.barcode = 'User Canceled';
//         });
//       }
//       else {
//         setState(() => this.barcode = 'Unknown error: $e');
//       }
//     } on FormatException{
//       setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
//     } catch (e) {
//       setState(() => this.barcode = 'Unknown error: $e');
//     }
//   }
// }

/////////

// class testscan extends StatefulWidget {
//   @override
//   _testscanState createState() => _testscanState();
// }
//
//
// class _MyAppState extends State<testscan> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: FlatButton(
//           child: Icon(Icons.import_contacts_sharp),
//           onPressed: () async{
//
//             var config = BarcodeScannerConfiguration(
//               barcodeFormats: [BarcodeFormat.CODE_128, BarcodeFormat.DATA_MATRIX],
//               topBarBackgroundColor: Colors.blueAccent,
//               finderTextHint: "Please align a barcode in the frame to scan it.",
//               cancelButtonTitle: "Cancel",
//               flashEnabled: true,
//             );
//             var result = await ScanbotBarcodeSdk.startBarcodeScanner(config);
//             setState(() {
//               print('the result is : $result');
//             });
//
//
//           },
//         ),
//       ),
//     );
//   }
// }


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Erbia",
//       home: HomePage(),
//     );
//   }
// }


//////////////////////////////   testScan barcode  ////////////////////////////////////////////////

//////////////////////////////   testScan barcode  ////////////////////////////////////////////////


//////////////////////////////   tabbar  ////////////////////////////////////////////////

 // class tabbar extends StatefulWidget {
 //   @override
 //   _tabbarState createState() => _tabbarState();
 // }
 //
 // class _tabbarState extends State<tabbar> {
 //   PersistentTabController _controller;
 //
 //   @override
 //  void setState(fn) {
 //    // TODO: implement setState
 //    super.setState(fn);
 //    _controller = PersistentTabController(initialIndex: 0);
 //  }
 //
 //   @override
 //   Widget build(BuildContext context) {
 //     return PersistentTabView(
 //         controller: _controller,
 //         screens: _buildScreens(),
 //         items: _navBarsItems(),
 //         confineInSafeArea: true,
 //         backgroundColor: Colors.white,
 //         handleAndroidBackButtonPress: true,
 //         resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears.
 //         stateManagement: true,
 //         hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
 //         decoration: NavBarDecoration(
 //           borderRadius: BorderRadius.circular(10.0),
 //           colorBehindNavBar: Colors.white,
 //         ),
 //         popAllScreensOnTapOfSelectedTab: true,
 //         popActionScreens: PopActionScreensType.all,
 //         itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
 //         duration: Duration(milliseconds: 200),
 //     curve: Curves.ease,
 //     ),
 //     screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
 //     animateTabTransition: true,
 //     curve: Curves.ease,
 //     duration: Duration(milliseconds: 200),
 //     ),
 //     navBarStyle: NavBarStyle.style1,
 //
 //     );
 //   }
 //   List<Widget> _buildScreens() {
 //     return [
 //       MyApp(),
 //       // HomePage(),
 //       HomePage()
 //     ];
 //   }
 //
 //   List<PersistentBottomNavBarItem> _navBarsItems() {
 //     return [
 //       PersistentBottomNavBarItem(
 //         icon: Icon(CupertinoIcons.home),
 //         title: ("Home"),
 //         activeColor: CupertinoColors.destructiveRed,
 //         inactiveColor: CupertinoColors.systemGrey,
 //       ),
 //       PersistentBottomNavBarItem(
 //         icon: Icon(CupertinoIcons.settings),
 //         title: ("Settings"),
 //         activeColor: CupertinoColors.destructiveRed,
 //         inactiveColor: CupertinoColors.systemGrey,
 //       ),
 //     ];
 //   }
 // }


/////////////////////////// lrft menu  ///////////////////////////////////////////////////
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context)
//   {
//     return InnerDrawer(
//
//         key: _innerDrawerKey,
//         onTapClose: true, // default false
//         swipe: true, // default true
//         boxShadow: [
//           BoxShadow(color: Colors.blue, spreadRadius: 1,)
//         ],
//         offset: IDOffset.only(bottom: 0.0, right: 0, left: 0,top: 0),
//         borderRadius: 10,  // return  true (open) or false (close)
//         leftChild: Scaffold(
//           body: Center(
//             child: Container(
//               child: Column(
//                 children: [
//                   Text('text'),
//                   Text('text'),
//                   Text('text'),
//                   Text('text'),
//                   Text('text'),
//                 ],
//               ),
//             ),
//           ),
//         ), // required if rightChild is not set
//         scaffold: Scaffold(
//           appBar: AppBar(
//               automaticallyImplyLeading: false,
//             title: Text('text'),
//             leading:  FlatButton(
//               onPressed: () {
//                 _toggle();
//               },
//               child: Text('toggle'),
//             ),
//             actions: [
//               FlatButton.icon(onPressed: (){
//                 pushNewScreenWithRouteSettings(
//                   context,
//                   settings: RouteSettings(name: HomePage.routeName),
//                   screen: HomePage(),
//                   withNavBar: false,
//                   pageTransitionAnimation: PageTransitionAnimation.cupertino,
//                 );
//               }, icon: Icon(Icons.opacity), label: Text('text'),
//               )
//             ],
//           ),
//           body: HomePage(),
//         )
//     );
//   }
//   final GlobalKey<InnerDrawerState> _innerDrawerKey = GlobalKey<InnerDrawerState>();
//   //
//   void _toggle()
//   {
//     _innerDrawerKey.currentState.toggle(
//         direction: InnerDrawerDirection.start
//     );
//   }
// }
//


