import 'package:flutter/material.dart';
import 'package:passdn/Homes.dart';
import 'package:passdn/Orders.dart';

import 'colors.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';


void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _index = 0;
  List<Widget> bottomItems = [
   homes(),
    orders(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        leadingWidth: 60.0,
        toolbarHeight: 70.0,
        
        leading:
            CircleAvatar(
                radius: 20.0,
                backgroundColor: bgColor,
                child: Icon(Icons.menu,color: Colors.black,)),
        title: mainTextFAQS("Shop", Colors.black, 15.0, FontWeight.bold, 1),

      ),

      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 65.0,
        child: CustomNavigationBar(
          elevation: 10.0,
          isFloating: false,
          currentIndex: _index,
          backgroundColor: Colors.white,
          unSelectedColor: Colors.grey,
          selectedColor: greenColor,
          iconSize: 26.0,
          blurEffect: true,
          onTap: (i) {
            setState(() {
              _index = i;
            });
          },
          items: [

            CustomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("Home",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
            ),
            CustomNavigationBarItem(
              icon:Icon(Icons.shopping_bag),
              title: Text("Order",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),

            ),
            CustomNavigationBarItem(
              icon:Icon(Icons.attach_file),
              title: Text("Product",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),

            ),
            CustomNavigationBarItem(
              icon:Icon(Icons.account_circle),
              title: Text("Profile",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),

            ),

          ],
        ),
      ),
      body: Stack(children: [
        // Blurr(context, 20.0),
        bottomItems.elementAt(_index)]),
    );
  }
}

