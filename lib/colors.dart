import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

// import 'package:cherry_toast/cherry_toast.dart' as cherry;


// import 'package:onesignal_flutter/onesignal_flutter.dart';


String mainFont = 'mo';

// Color bgColor = Color(0xFF150714);
// Color bglight = Color(0xFF200B1E);
// Color mainColor = Color(0xFFFE69A9);
// Color mainlight = Color(0xFFFF2181);
// Color secColor = Color(0xFF896186);

// Color bgColor = Color(0xFF00112C);
// Color bglight = Color(0xFF001B46);
// Color mainColor = Color(0xFF7E13B2);
// Color mainlight = Color(0xFF790EAF);
// Color secColor = Color(0xFF896186);

Color bgColor = Color(0xFFF7F6F6);
Color bglight = Color(0xFF13001E);
Color mainColor = Color(0xFF7F00FD);
Color twomainColor = Color(0xFF850CFF);
Color mainlight = Color(0xFF885CFF);
Color secColor = Color(0xFF896186);


Color greenColor = Color(0xFF228F45);
Color lightgreen = Color(0xFFD9F3EA);

Color yellove = Color(0xFFF0DE30);



Color errorColor = Color(0xFFFFFFFF);

Color transparent_overlay = Color(0xFFFFFF);

Color bg_trans = Color(0xB300112C);

Color redColor = Color(0xFFFF0058);

Color lightRed = Color(0xFFFF0058);


Color textColor = Color(0xFFFFFFFF);



AutoSizeText mainText(String text, Color c, double size, FontWeight w,int lines) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.center,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}

AutoSizeText mainTextFont(String text, Color c, double size, FontWeight w,int lines,String fontsss) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.center,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: fontsss,
      fontWeight: w,

    ),
  );
}
AutoSizeText mainTextFontLeft(String text, Color c, double size, FontWeight w,int lines,String fontsss) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.start,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: fontsss,
      fontWeight: w,

    ),
  );
}

Text onlymainText(String text, Color c, double size, FontWeight w,int lines) {
  return Text(
    text,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,
    ),
  );
}
Text onlyCentermainText(String text, Color c, double size, FontWeight w,int lines) {
  return Text(
    text,
    textAlign: TextAlign.center,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,
    ),
  );
}

Text newonlymainText(String text, Color c, double size, FontWeight w,int lines) {
  return Text(
    text,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: 'mp',
      fontWeight: w,
    ),
  );
}

AutoSizeText mainTextFAQS(String text, Color c, double size, FontWeight w,int lines) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.start,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}

AutoSizeText mainTextFAQSalign(String text, Color c, double size, FontWeight w,TextAlign a,int lines) {
  return AutoSizeText(
    text,
    textAlign: a,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}


AutoSizeText mainTextLines(String text, Color c, double size, FontWeight w,int lines) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.start,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}


// class loader extends StatelessWidget {
//   const loader({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       alignment: Alignment.center,
//       child: new Container(
//         // height: 150.0,
//         width: 150.0,
//         child: new Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           color: bglight,
//           elevation: 5.0,
//           child: Padding(
//             padding: EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Lottie.asset('Assets/load.json',
//                   width: 120.0,
//                   // repeat: false,
//                   frameRate: FrameRate.max,
//                   alignment: Alignment.center,
//                 ),
//                 onlymainText("Please Wait...", mainColor, 10.0, FontWeight.normal, 1),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class msgLoader extends StatelessWidget {
  String msg;
  msgLoader({Key? key,required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.bottomCenter,
      child: new Container(
        height: 110.0,
        width: MediaQuery.of(context).size.width * 0.90,
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: mainColor,
          elevation: 7.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                mainText(msg, Colors.white, 15.0, FontWeight.normal, 2),
                SizedBox(height: 3.0,),
                CircularProgressIndicator(
                  backgroundColor: mainColor,
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


Widget loaderss(bool a,BuildContext context){
  return Visibility(
      visible: a,
      child: Stack(
        children: [
          Visibility(
            visible: a,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.1),
                alignment: Alignment.center,
              ),
            ),
          ),
          Visibility(visible: a, child:
          Column())
        ],
      ));
}

Widget msgLoaderss(bool a,String msg,BuildContext context){
  return Visibility(
      visible: a,
      child: Stack(
        children: [
          Visibility(
            visible: a,
            child: new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: new Card(
                color: transparent_overlay,
                elevation: 4.0,
              ),
            ),
          ),
          Visibility(visible: a, child: msgLoader(msg: msg))
        ],
      ));
}


void snacker(String s, BuildContext c){
  ScaffoldMessenger.of(c).showSnackBar(SnackBar(
      elevation: 0,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: mainlight,
      content:
      Text(s)));
}

void Snacker(String title,GlobalKey<ScaffoldMessengerState> aa){
  final snackBar = SnackBar(
      elevation: 2,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: yellove,
      content:mainTextLines(title, bgColor, 10.0, FontWeight.normal, 1) );

  aa.currentState?.showSnackBar(snackBar);
  // messangerKey.currentState?.showSnackBar(snackBar);

}

// toaster(BuildContext context,String msg){
//
//   cherry.CherryToast(
//     themeColor: mainColor,
//     backgroundColor: bgColor,
//     icon: Iconsax.info_circle,
//     shadowColor: Colors.black,
//     iconColor: mainColor,
//     title: onlymainText(msg, Colors.white, 13.0
//         , FontWeight.bold, 1),
//     animationDuration: Duration(milliseconds: 300),
//     toastDuration: Duration(milliseconds: 2000),
//   ).show(context);
//
//   // Fluttertoast.showToast(msg: msg,
//   //     toastLength: Toast.LENGTH_SHORT,
//   //     gravity: ToastGravity.BOTTOM,
//   //     timeInSecForIosWeb: 1,
//   //     textColor: Colors.white,
//   //     backgroundColor: mainColor);
//
// }

dialogLoader(BuildContext context,) async{
  await showDialog(
    context: context,
    builder: (context) => new AlertDialog(
      backgroundColor: mainColor,
      alignment: Alignment.bottomCenter,
      content: CircularProgressIndicator(
        backgroundColor: Colors.white,
        color: bgColor,
        strokeWidth: 5,
      ),
    ),
  );
}

Widget circles(BuildContext context){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
      Container(
        // margin: EdgeInsets.only(),

        child:
        Transform.translate(
            offset: Offset(
              -70.0,
              -120.0,
            ),
            child: CircleAvatar(
              backgroundColor: bglight,
              radius: 130.0,
            ),
        ),
      ),
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          MediaQuery.of(context).size.width - 200.0,
          MediaQuery.of(context).size.height - 200.0,
        ),
        child: CircleAvatar(
          backgroundColor: bglight,
          radius: 130.0,
        ),
      ),
    ),

  ],
  );
}

Widget circlesleft(BuildContext context){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          MediaQuery.of(context).size.width - 200.0,
          -120.0,
        ),
        child: CircleAvatar(
          backgroundColor: bglight,
          radius: 130.0,
        ),
      ),
    ),
    Container(
      child:
      Transform.translate(
        offset: Offset(
          -70,
          MediaQuery.of(context).size.height - 200.0,
        ),
        child: CircleAvatar(
          backgroundColor: bglight,
          radius: 130.0,
        ),
      ),
    ),

  ],
  );
}

Widget pinkCircle(BuildContext context){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          MediaQuery.of(context).size.width - 200.0,
          -120.0,
        ),
        child: CircleAvatar(
          backgroundColor: mainlight,
          radius: 130.0,
        ),
      ),
    ),
    Container(
      child:
      Transform.translate(
        offset: Offset(
          -70,
          MediaQuery.of(context).size.height - 200.0,
        ),
        child: CircleAvatar(
          backgroundColor: mainlight,
          radius: 130.0,
        ),
      ),
    ),

  ],
  );
}


Widget dynamicCorners(BuildContext context,IconData a){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          MediaQuery.of(context).size.width - 200.0,
          -100.0,
        ),
        child: Container(
          child: Icon(a,color: bglight,size: 250.0,),
        )
      ),
    ),
    Container(
      child:
      Transform.translate(
        offset: Offset(
          -50,
          MediaQuery.of(context).size.height - 250.0,
        ),
        child: Container(
          child: Icon(a,color: bglight,size: 250.0,),
        )
      ),
    ),

  ],
  );
}


Widget bottomIn(){
  return Container(
    alignment: Alignment.bottomCenter,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        mainText("interested", mainColor, 15.0, FontWeight.normal, 1),
        mainText("be one", secColor, 10.0, FontWeight.normal, 1),
        SizedBox(height: 20.0,)
      ],
    ),
  );
}

Widget textr(BuildContext context,String text){
  return Stack(
    fit: StackFit.expand,
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin: EdgeInsets.only(),
      child:
      Transform.translate(
        offset: Offset(
          20.0,
          -100.0,
        ),
        child: Transform.rotate(
          angle: 0.2,
          child: Wrap(
            children: [
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),
              mainText(text, bglight, 100.0, FontWeight.normal, 1),

            ],
          ),
        )
      ),
    ),

  ],
  );
}

// Widget horray(bool a,){
//   return Visibility(
//     visible: a,
//     child: Container(
//       alignment: Alignment.center,
//       child: Lottie.asset('Assets/horray.json',
//         // repeat: false,
//         frameRate: FrameRate.max,
//         alignment: Alignment.center,
//       ),
//     ),
//   );
// }

// Widget mainIcon(bool a) {
//   return Visibility(
//     visible: a,
//     child: Container(
//       alignment: Alignment.center,
//       child: Row(
//         children: [
//           Spacer(),
//           Lottie.asset('Assets/ani.json',
//             width: 60.0,
//             height: 60.0,
//             frameRate: FrameRate.max,
//             repeat: true,
//             alignment: Alignment.center,
//           ),
//           Spacer(),
//         ],
//       ),
//     ),
//   );
// }


Widget notFound(bool a,IconData i, String m){
  return Visibility(
    visible: a,
    child: Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(i,color: mainlight,size: 40.0,),
          mainText(m, mainlight, 20.0, FontWeight.normal, 1),

        ],
      ),
    ),
  );
}

Widget Blurr(BuildContext context,double x){
  return BackdropFilter(filter: ImageFilter.blur(sigmaX:x, sigmaY: x),
    child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.withOpacity(0.1),
      alignment: Alignment.center,
    ),
  );
}

Widget bgcircles(BuildContext context,Color c){
  return  Stack(
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          70.0,
          120.0,
        ),
        child: CircleAvatar(
          backgroundColor:c,
          radius: 20.0,
        ),
      ),
    ),
    Container(
      // margin: EdgeInsets.only(),
      alignment: Alignment.center,
      child:
      Transform.translate(
        offset: Offset(
          200.0,
          -350.0,
        ),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor:c,
                radius: 150.0,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: bgColor,
                radius: 140.0,
              ),
            ),
          ],
        ),
      ),
    ),

    Container(
      // margin: EdgeInsets.only(),
      alignment: Alignment.center,
      child:
      Transform.translate(
        offset: Offset(
          -200.0,
          350.0,
        ),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: c,
                radius: 150.0,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: bgColor,
                radius: 140.0,
              ),
            ),
          ],
        ),
      ),
    ),

    Container(
      // margin: EdgeInsets.only(),
      alignment: Alignment.bottomCenter,
      child:
      Transform.translate(
        offset: Offset(
          150,
          40,
        ),
        child: CircleAvatar(
          backgroundColor: c,
          radius: 40.0,
        ),
      ),
    ),

  ],
  );
}

Widget allnewbgcircles(BuildContext context,Color c){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          -70.0,
          -120.0,
        ),
        child: CircleAvatar(
          backgroundColor: c,
          radius: 100.0,
        ),
      ),
    ),
    Container(
      // margin: EdgeInsets.only(),
      alignment: Alignment.center,
      child:
      Transform.translate(
        offset: Offset(
          150.0,
          -10.0,
        ),
        child: CircleAvatar(
          backgroundColor: c,
          radius: 70.0,
        ),
      ),
    ),
    Container(
      // margin: EdgeInsets.only(),
      alignment: Alignment.bottomCenter,
      child:
      Transform.translate(
        offset: Offset(
          -100,
          100,
        ),
        child: CircleAvatar(
          backgroundColor: c,
          radius: 80.0,
        ),
      ),
    ),

  ],
  );
}
Widget oneallnewbgcircles(BuildContext context,Color c){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          -70.0,
          -120.0,
        ),
        child: CircleAvatar(
          backgroundColor: c,
          radius: 100.0,
        ),
      ),
    ),
    Container(
      // margin: EdgeInsets.only(),
      alignment: Alignment.bottomCenter,
      child:
      Transform.translate(
        offset: Offset(
          160,
          100,
        ),
        child: CircleAvatar(
          backgroundColor: c,
          radius: 100.0,
        ),
      ),
    ),

  ],
  );
}

Widget newbgcircles(BuildContext context,Color c){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
    Container(
      // margin:
      //EdgeInsets.only(),
      alignment: Alignment.center,
      child:
      Transform.translate(
        offset: Offset(
          0.0,
          0.0,
        ),
        child: Container(
          width: 200,
          height: 200,
          child: Card(
            elevation: 0.0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000.0),
              side: BorderSide(
                color: yellove,
                width: 5.0
              ),

            ),
          ),
        )
      ),
    ),
    Container(
      // margin:
      //EdgeInsets.only(),
      alignment: Alignment.center,
      child:
      Transform.translate(
        offset: Offset(
          0.0,
          0.0,
        ),
        child: Container(
          width: 400,
          height: 400,
          child: Card(
            elevation: 0.0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000.0),
              side: BorderSide(
                color: mainColor,
                width: 10.0
              ),

            ),
          ),
        )
      ),
    ),

  ],
  );
}

// class notiswitch extends StatefulWidget {
//   notiswitch({Key? key}) : super(key: key);
//
//   @override
//   State<notiswitch> createState() => _notiswitchState();
// }
//
// class _notiswitchState extends State<notiswitch> {
//
//   late SharedPreferences prefs;
//   bool textnoti = true;
//
//   @override
//   void initState() {
//     getValues();
//   }
//
//   getValues() async{
//     prefs = await SharedPreferences.getInstance();
//
//     if(prefs.getBool('tN') != null){
//       final bool? tN = prefs.getBool('tN',);
//       print(tN);
//       setState(() {
//         textnoti = tN!;
//       });
//     }
//     else{
//       setState(() {
//         textnoti = true;
//       });
//     }
//
//     //////////////////////////////////////////////////////
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Switch(
//       // thumb color (round icon)
//       activeColor: mainColor,
//       activeTrackColor: Colors.white,
//       inactiveThumbColor: Colors.white,
//       inactiveTrackColor: Colors.grey,
//       splashRadius: 50.0,
//       // boolean variable value
//       value: textnoti,
//       // changes the state of the switch
//       onChanged: (value) {
//         setState(() {
//           textnoti = value;
//           nasyn(value);
//
//         });
//       },
//     );
//   }
//
//   // void nasyn(bool a) async{
//   //   await prefs.setBool('tN',a);
//   //   await OneSignal.shared.disablePush(!a);
//   // }
//
// }



// Widget animantion(String a, double w){
//   return Lottie.asset(a,
//     width: w,
//     frameRate: FrameRate.max,
//     repeat: true,
//     alignment: Alignment.center,
//   );
// }


Widget gbg(BuildContext c){
  return Container(
    width: MediaQuery.of(c).size.width,
    height: MediaQuery.of(c).size.height,
    decoration: BoxDecoration(

      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          mainColor,
          twomainColor,
        ],
      ),
    ),
  );
}





