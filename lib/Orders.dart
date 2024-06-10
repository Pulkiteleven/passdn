import 'package:flutter/material.dart';
import 'package:passdn/Buttons.dart';
import 'package:passdn/colors.dart';

class orders extends StatefulWidget {
  const orders({super.key});

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 40.0,
                child: TabBar(
                  labelColor: greenColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: greenColor,
                  // tabAlignment:TabAlignment.start,
                  labelStyle: TextStyle(fontSize: 10.0),
                  tabs: [
                    Row(
                      // Wrap each Tab content in a Row
                      mainAxisSize: MainAxisSize.min,
                      // Size the Row to fit its contents
                      children: [
                        Icon(Icons.wifi),
                        SizedBox(width: 5.0),
                        // Add a small spacing between icon and text
                        Text('Order'),
                      ],
                    ),
                    Row(
                      // Wrap each Tab content in a Row
                      mainAxisSize: MainAxisSize.min,
                      // Size the Row to fit its contents
                      children: [
                        Icon(Icons.local_shipping),
                        SizedBox(width: 5.0),
                        // Add a small spacing between icon and text
                        Text('Shipping'),
                      ],
                    ),
                    Row(
                      // Wrap each Tab content in a Row
                      mainAxisSize: MainAxisSize.min,
                      // Size the Row to fit its contents
                      children: [
                        Icon(Icons.cancel_outlined),
                        SizedBox(width: 5.0),
                        // Add a small spacing between icon and text
                        Text('Return'),
                      ],
                    ),
                    Row(
                      // Wrap each Tab content in a Row
                      mainAxisSize: MainAxisSize.min,
                      // Size the Row to fit its contents
                      children: [
                        Icon(Icons.check_circle_outline),
                        SizedBox(width: 5.0),
                        // Add a small spacing between icon and text
                        Text('Completed'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  allOrders(),
                  allOrders(),
                 Column(),
                  Column(),
                ],
              )),
            ],
          )
        ],
      ),
    );
  }
}

class allOrders extends StatefulWidget {
  const allOrders({super.key});

  @override
  State<allOrders> createState() => _allOrdersState();
}

class _allOrdersState extends State<allOrders> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                bordericonbtnsss("Live", () {}, Colors.transparent, greenColor,
                    10.0, Icons.wifi),
                SizedBox(
                  width: 10.0,
                ),
                bordericonbtnsss("Pending", () {}, Colors.transparent,
                    Colors.grey, 10.0, Icons.refresh_outlined)
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: Colors.white),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          onlymainText("Order ID : 3403449309", Colors.white,
                              13.0, FontWeight.bold, 1),
                          Spacer(),
                          Icon(
                            Icons.access_time_outlined,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          onlymainText("5 Min Ago", Colors.white, 13.0,
                              FontWeight.bold, 1),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Title", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText(
                                    "Q", Colors.black, 13.0, FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("Price", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Fresho Capsicum 500gm", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("5", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("₹120", Colors.grey, 13.0, FontWeight.normal, 1)),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Fresho Capsicum 500gm", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("5", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("₹120", Colors.grey, 13.0, FontWeight.normal, 1)),
                          ],
                        ),
        
                        SizedBox(height: 10.0,),
        
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Total", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText(
                                    "", Colors.black, 13.0, FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("₹240", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                          ],
                        ),
        

                        Card(
                          elevation: 0.0,
                          color: Colors.transparent,
                          child: ExpansionTile(

                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Row(
                                      children: [
                                        Icon(Icons.supervised_user_circle_outlined,color: Colors.black,),
                                        SizedBox(width: 5.0,),
                                        onlymainText("Customer info", Colors.black, 13.0,
                                            FontWeight.bold, 1),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: onlymainText(
                                        "", Colors.black, 13.0, FontWeight.bold, 1)),

                              ],
                            ),
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: onlymainText("Customer Info", Colors.black, 13.0,
                                          FontWeight.bold, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText(
                                          "", Colors.black, 13.0, FontWeight.bold, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.black, 13.0,
                                          FontWeight.bold, 1)),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: onlymainText("Pulkit Dubey", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("5035930", Colors.grey, 13.0, FontWeight.normal, 1)),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: onlymainText("Some new Address", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.grey, 13.0, FontWeight.normal, 1)),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  onlymainText("Payment Mode", Colors.black, 13.0,
                                      FontWeight.bold, 1),
                                  Spacer(),

                                  onlymainText("Cash on delivery", Colors.black, 13.0,
                                      FontWeight.bold, 1),
                                ],
                              ),
                            ],
                          ),
                        ),
        

        
        
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 60.0,
        
                                  child: borderbtnsss("Cancel", (){}, Colors.transparent, Colors.grey, 30.0),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Expanded(
                                child: Container(
                                  height: 60.0,
        
                                  child: custombtnsss("Process Order", (){}, greenColor, Colors.white, 30.0),
                                ),
                              ),
        
                            ],
                          ),
                        )
        
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: Colors.white),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          onlymainText("Order ID : 3403449309", Colors.white,
                              13.0, FontWeight.bold, 1),
                          Spacer(),
                          Icon(
                            Icons.access_time_outlined,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          onlymainText("5 Min Ago", Colors.white, 13.0,
                              FontWeight.bold, 1),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Title", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText(
                                    "Q", Colors.black, 13.0, FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("Price", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Fresho Capsicum 500gm", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("5", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("₹120", Colors.grey, 13.0, FontWeight.normal, 1)),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Fresho Capsicum 500gm", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("5", Colors.grey, 13.0, FontWeight.normal, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("₹120", Colors.grey, 13.0, FontWeight.normal, 1)),
                          ],
                        ),

                        SizedBox(height: 10.0,),

                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 5,
                                child: onlymainText("Total", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText(
                                    "", Colors.black, 13.0, FontWeight.bold, 1)),
                            Expanded(
                                flex: 1,
                                child: onlymainText("₹240", Colors.black, 13.0,
                                    FontWeight.bold, 1)),
                          ],
                        ),


                        Card(
                          elevation: 0.0,
                          color: Colors.transparent,
                          child: ExpansionTile(

                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Row(
                                      children: [
                                        Icon(Icons.supervised_user_circle_outlined,color: Colors.black,),
                                        SizedBox(width: 5.0,),
                                        onlymainText("Customer info", Colors.black, 13.0,
                                            FontWeight.bold, 1),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: onlymainText(
                                        "", Colors.black, 13.0, FontWeight.bold, 1)),

                              ],
                            ),
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: onlymainText("Customer Info", Colors.black, 13.0,
                                          FontWeight.bold, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText(
                                          "", Colors.black, 13.0, FontWeight.bold, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.black, 13.0,
                                          FontWeight.bold, 1)),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: onlymainText("Pulkit Dubey", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("5035930", Colors.grey, 13.0, FontWeight.normal, 1)),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: onlymainText("Some new Address", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.grey, 13.0, FontWeight.normal, 1)),
                                  Expanded(
                                      flex: 1,
                                      child: onlymainText("", Colors.grey, 13.0, FontWeight.normal, 1)),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  onlymainText("Payment Mode", Colors.black, 13.0,
                                      FontWeight.bold, 1),
                                  Spacer(),

                                  onlymainText("Cash on delivery", Colors.black, 13.0,
                                      FontWeight.bold, 1),
                                ],
                              ),
                            ],
                          ),
                        ),




                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 60.0,

                                  child: borderbtnsss("Cancel", (){}, Colors.transparent, Colors.grey, 30.0),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Expanded(
                                child: Container(
                                  height: 60.0,

                                  child: custombtnsss("Process Order", (){}, greenColor, Colors.white, 30.0),
                                ),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
