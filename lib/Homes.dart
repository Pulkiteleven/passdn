import 'dart:math';

import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:passdn/colors.dart';

class homes extends StatefulWidget {
  const homes({super.key});

  @override
  State<homes> createState() => _homesState();
}

class _homesState extends State<homes> {
  final List ranking = [
    {'class': 'Sun', 'total': 88},
    {'class': 'Mon', 'total': 44},
    {'class': 'Tue', 'total': 50},
    {'class': 'Wen', 'total': 66},
    {'class': 'Thr', 'total': 99},
    {'class': 'Fri', 'total': 30},
    {'class': 'Sat', 'total': 65},
  ];

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            children: [
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(13, 10, 13.0, 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mainTextFAQS("Product Sales", Colors.black, 18.0,
                            FontWeight.bold, 1),
                        SizedBox(
                          height: 10.0,
                        ),
                        mainTextFAQS("Total Product Sales", Colors.grey, 15.0,
                            FontWeight.bold, 1),
                        SizedBox(
                          height: 15.0,
                        ),
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: DChartBarCustom(
                            loadingDuration: const Duration(milliseconds: 100),
                            showLoading: true,
                            valueAlign: Alignment.topCenter,
                            showDomainLine: true,
                            showDomainLabel: true,
                            showMeasureLine: true,
                            showMeasureLabel: true,
                            spaceDomainLabeltoChart: 10,
                            spaceMeasureLabeltoChart: 5,
                            spaceDomainLinetoChart: 0,
                            spaceMeasureLinetoChart: 5,
                            spaceBetweenItem: 20,
                            radiusBar: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            measureLabelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                            domainLabelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                            measureLineStyle:
                                const BorderSide(color: Colors.grey, width: 1),
                            domainLineStyle:
                                const BorderSide(color: Colors.grey, width: 1),
                            max: 100,
                            listData: List.generate(ranking.length, (index) {
                              // Random from 'dart:math'
                              Color currentColor = Color(0xFF228F45);
                              return DChartBarDataCustom(
                                  elevation: 8,
                                  value: ranking[index]['total'].toDouble(),
                                  label: ranking[index]['class'],
                                  color: currentColor.withOpacity(1),
                                  splashColor: Colors.blue,
                                  valueStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                  )
                                  // valueTooltip: '${ranking[index]['total']} Student',
                                  );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.3),
                  children: <Widget>[
                   gridCard(name: "Total Revenue", sub: "₹504", img:"one"),
                   gridCard(name: "Online Order", sub: "#304", img:"two"),
                   gridCard(name: "Return Order", sub: "#300", img:"three"),
                   gridCard(name: "Cancelled Order", sub: "#209", img:"four"),
                   gridCard(name: "In Stock Product", sub: "#93", img:"five"),
                   gridCard(name: "Out of Stock Product", sub: "#420", img:"six"),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class gridCard extends StatelessWidget {
  String name;
  String sub;
  String img;

  gridCard(
      {super.key, required this.name, required this.sub, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width * 0.45,
      margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greenColor, width: 1.0),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: lightgreen,
              radius: 30.0,
              child: Image.asset("Assets/$img.png",scale: 0.8,),
            ),
            mainTextFAQS(name, Colors.grey, 10.0, FontWeight.bold, 1),

            mainTextFAQS(sub, greenColor, 20.0, FontWeight.bold, 1),
          ],
        ),
      ),
    );
  }
}
