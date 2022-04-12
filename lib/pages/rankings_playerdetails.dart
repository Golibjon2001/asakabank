import 'dart:math';
import 'package:asakabank/model/tasc.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:asakabank/widgets/widget_tatyana.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RankingsPlayerDetails extends StatefulWidget {
  const RankingsPlayerDetails({Key? key}) : super(key: key);

  @override
  _RankingsPlayerDetailsState createState() => _RankingsPlayerDetailsState();
}

class _RankingsPlayerDetailsState extends State<RankingsPlayerDetails> {
  bool onTab = false;

  void onOf() {
    setState(() {
      onTab = !onTab;
    });
  }

  late List<Sales> _data;
  late List<charts.Series<Sales, String>> _chartdata;

  void _makeData() {
    _data = <Sales>[];
    _chartdata = <charts.Series<Sales, String>>[];

    final rnd = Random();
    for (int i = 2019; i < 2026; i++) {
      _data.add(Sales(i.toString(), rnd.nextDouble()));
    }
    _chartdata.add(charts.Series(
      id: "Sales",
      colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      data: _data,
      domainFn: (Sales sales, _) => sales.year,
      measureFn: (Sales sales, _) => sales.sales,
      fillPatternFn: (_, __) => charts.FillPatternType.solid,
      displayName: "sales",
    ));
  }

  @override
  void initState() {
    super.initState();
    _makeData();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          actions: [
            SvgPicture.asset("assets/icons/frame.svg"),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset("assets/icons/share.svg"),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            //image
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Tatyana(
                image: "assets/images/user4.png",
                name: "Saidmakhmud Sharipov",
                onTab: () {},
                icons: '',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            //tabbar
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(8)),
              child: TabBar(
                indicator: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(8)),
                tabs: const [
                  Tab(text: "ITF ranking"),
                  Tab(text: "ATF ranking"),
                  Tab(text: "TE ranking"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //tabbarViu
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Current place",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 27,
                                          width: 27,
                                          child: SvgPicture.asset(
                                              "assets/icons/sovrin.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "25 — 1,550 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Events played",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/tennis.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "28",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Total points",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "12&U",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Previous week",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                          width: 24,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "1,500 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Career high rankings",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "1,550 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Pro",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400.withOpacity(0.4),
                                spreadRadius: 10,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, right: 50, top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: onTab
                                            ? null
                                            : () {
                                                onOf();
                                              },
                                        child: Text(
                                          "Singles",
                                          style: TextStyle(
                                              color: onTab
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    InkWell(
                                        onTap: onTab
                                            ? () {
                                                onOf();
                                              }
                                            : null,
                                        child: Text("Doubles",
                                            style: TextStyle(
                                                color: onTab
                                                    ? Colors.grey
                                                    : Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600))),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: onTab
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: const [
                                                Text(
                                                  "Win Record\nfor all years",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "25",
                                                  style: TextStyle(
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Row(
                                              children: const [
                                                Text(
                                                  "Loss Record\nfor all years",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "3",
                                                  style: TextStyle(
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : const Center(
                                        child: Text("Double"),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Current place",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 27,
                                          width: 27,
                                          child: SvgPicture.asset(
                                              "assets/icons/sovrin.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "25 — 1,550 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Events played",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/tennis.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "28",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Total points",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "12&U",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Previous week",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                          width: 24,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "1,500 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Career high rankings",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "1,550 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Pro",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400.withOpacity(0.4),
                                spreadRadius: 10,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, right: 50, top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: onTab
                                            ? null
                                            : () {
                                                onOf();
                                              },
                                        child: Text(
                                          "Singles",
                                          style: TextStyle(
                                              color: onTab
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    InkWell(
                                        onTap: onTab
                                            ? () {
                                                onOf();
                                              }
                                            : null,
                                        child: Text("Doubles",
                                            style: TextStyle(
                                                color: onTab
                                                    ? Colors.grey
                                                    : Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600))),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: onTab
                                    ? SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        "Win Record\nfor all years",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "25",
                                                        style: TextStyle(
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 50,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        "Loss Record\nfor all years",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "3",
                                                        style: TextStyle(
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Text(
                                                "Ranking History",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17),
                                                            color: Colors
                                                                .grey.shade200,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                const Text(
                                                                  "Boys all",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                SvgPicture.asset(
                                                                    "assets/icons/strelka.svg")
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 17,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17),
                                                            color: Colors
                                                                .grey.shade200,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                const Text(
                                                                  "2021",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                SvgPicture.asset(
                                                                    "assets/icons/strelka.svg")
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 300,
                                                    child: charts.BarChart(
                                                        _chartdata),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : const Center(
                                        child: Text("Double"),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Current place",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 27,
                                          width: 27,
                                          child: SvgPicture.asset(
                                              "assets/icons/sovrin.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "25 — 1,550 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Events played",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/tennis.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "28",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Total points",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "12&U",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Previous week",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                          width: 24,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "1,500 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Career high rankings",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "1,550 pts",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Pro",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                              "assets/icons/calendar2.svg"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400.withOpacity(0.4),
                                spreadRadius: 10,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, right: 50, top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: onTab
                                            ? null
                                            : () {
                                                onOf();
                                              },
                                        child: Text(
                                          "Singles",
                                          style: TextStyle(
                                              color: onTab
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    InkWell(
                                        onTap: onTab
                                            ? () {
                                                onOf();
                                              }
                                            : null,
                                        child: Text("Doubles",
                                            style: TextStyle(
                                                color: onTab
                                                    ? Colors.grey
                                                    : Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600))),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: onTab
                                    ? SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        "Win Record\nfor all years",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "25",
                                                        style: TextStyle(
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 50,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        "Loss Record\nfor all years",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "3",
                                                        style: TextStyle(
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Text(
                                                "Ranking History",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17),
                                                            color: Colors
                                                                .grey.shade200,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                const Text(
                                                                  "Boys all",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                SvgPicture.asset(
                                                                    "assets/icons/strelka.svg")
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 17,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17),
                                                            color: Colors
                                                                .grey.shade200,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                const Text(
                                                                  "2021",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                SvgPicture.asset(
                                                                    "assets/icons/strelka.svg")
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 300,
                                                    child: charts.BarChart(
                                                        _chartdata),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : const Center(
                                        child: Text("Double"),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
