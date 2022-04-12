import 'package:asakabank/model/model_itfgrils.dart';
import 'package:asakabank/widgets/widget_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TournamentDetails extends StatefulWidget {
  const TournamentDetails({Key? key}) : super(key: key);

  @override
  _TournamentDetailsState createState() => _TournamentDetailsState();
}

class _TournamentDetailsState extends State<TournamentDetails> {
  bool ontrue = false;

  void onTrue() {
    setState(() {
      ontrue = !ontrue;
    });
  }

  List<ItfGrils> itfgrils = [
    ItfGrils(
      name: "Tatyana Kim",
      flag: "assets/icons/flag_core.svg",
      age: "2003",
      age2: "2.889",
      age3: "2.889",
    ),
    ItfGrils(
      name: "Tatyana Kim",
      flag: "assets/icons/flag_uz.svg",
      age: "2003",
      age2: "2.889",
      age3: "2.889",
    ),
    ItfGrils(
      name: "Tatyana Kim",
      flag: "assets/icons/flag_russia.svg",
      age: "2003",
      age2: "2.889",
      age3: "2.889",
    ),
    ItfGrils(
      name: "Tatyana Kim",
      flag: "assets/icons/flag_core.svg",
      age: "2003",
      age2: "2.889",
      age3: "2.889",
    ),
    ItfGrils(
      name: "Tatyana Kim",
      flag: "assets/icons/flag_germany.svg",
      age: "2003",
      age2: "2.889",
      age3: "2.889",
    ),
    ItfGrils(
      name: "Tatyana Kim",
      flag: "assets/icons/flag_core.svg",
      age: "2003",
      age2: "2.889",
      age3: "2.889",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var stylebegin = const TextStyle(fontSize: 25, fontWeight: FontWeight.w800);
    var style = const TextStyle(fontSize: 11, color: Colors.grey);
    var size = const SizedBox(
      width: 20,
    );
    var stylegrey = const TextStyle(color: Colors.grey);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          SvgPicture.asset("assets/icons/more.svg"),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                    child: Text("ITF"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Asia 12&U Team\nCompetition – West Asia",
                  style: stylebegin,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Registration open",
                  style: TextStyle(color: Colors.lightGreen),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Host nation",
                              style: stylegrey,
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
                                      "assets/icons/flag_core.svg"),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Bolton, Great\nBritain",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                            Text(
                              "Age group",
                              style: stylegrey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 23,
                                  width: 23,
                                  child:
                                      SvgPicture.asset("assets/icons/user.svg"),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "12&U",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                            Text(
                              "Tournament days",
                              style: stylegrey,
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
                                  "Nov 25–Dec 5, 2021",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                            Text(
                              "Category",
                              style: stylegrey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 23,
                                  width: 23,
                                  child:
                                      SvgPicture.asset("assets/icons/grid.svg"),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Category 1",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400.withOpacity(0.9),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 8),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Calendar
                        InkWell(
                            onTap: ontrue
                                ? null
                                : () {
                                    onTrue();
                                  },
                            child: Text("General",
                                style: TextStyle(
                                    color: ontrue ? Colors.black : Colors.grey,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        const SizedBox(
                          width: 55,
                        ),
                        //Followings
                        InkWell(
                            onTap: ontrue
                                ? () {
                                    onTrue();
                                  }
                                : null,
                            child: Text(
                              "Acceptance list",
                              style: TextStyle(
                                  color: ontrue ? Colors.grey : Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ontrue
                        ?
                        //General
                        Stack(
                            children: [
                              SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Court surface",
                                                    style: stylegrey,
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
                                                            "assets/icons/surface.svg"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text(
                                                        "Outdoor/Hard",
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Entry deadline",
                                                    style: stylegrey,
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
                                                        "Sept 27, 2021\n00:00 GMT",
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Entry fee",
                                                    style: stylegrey,
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
                                                            "assets/icons/tag.svg"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text(
                                                        "\$50",
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Withdrawal deadline",
                                                    style: stylegrey,
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
                                                        "Sept 27, 2021\n00:00 GMT",
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Hospitality",
                                        style: stylegrey,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: SvgPicture.asset(
                                                  "assets/icons/briefcase.svg")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              const Text(
                                                  "Free hospitality for all National Squads an hospit an"),
                                              Container(
                                                width: 35,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomLeft,
                                                    colors: [
                                                      Colors.white,
                                                      Colors.grey.shade100,
                                                    ],
                                                  ),
                                                ),
                                                child: const Text(
                                                  "more",
                                                  style: TextStyle(
                                                      color: Colors.orange),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Address",
                                        style: stylegrey,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: SvgPicture.asset(
                                                  "assets/icons/map.svg")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                              "Arena Approach, Horwich Parkway, BL6 6LB\nBolton, Great Britain"),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Tournament key",
                                        style: stylegrey,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: SvgPicture.asset(
                                                  "assets/icons/key.svg")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text("TE-LTU-47A-2021"),
                                        ],
                                      ),
                                      Container(
                                        height: 80,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 60,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            border: Border.all(
                                                color: Colors.lightGreen),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "Delete from my Calendar",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        :
                        //Acceptance list
                        Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Boys",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Girls",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("16"),
                                        Text(
                                          "Single main draw",
                                          style: stylegrey,
                                        ),
                                        const Text("20"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("32"),
                                        Text(
                                          "Doubles main draw",
                                          style: stylegrey,
                                        ),
                                        const Text("24"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("18"),
                                        Text(
                                          "Singles qualifying",
                                          style: stylegrey,
                                        ),
                                        const Text("26"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 28,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Row(
                                            children: [
                                              Text("#", style: style),
                                              const SizedBox(
                                                width: 18,
                                              ),
                                              Text(
                                                "Player name".toUpperCase(),
                                                style: style,
                                              ),
                                              const SizedBox(
                                                width: 45,
                                              ),
                                              Text("Nation".toUpperCase(),
                                                  style: style),
                                              size,
                                              Text(
                                                  "Year of \nbirth"
                                                      .toUpperCase(),
                                                  style: style),
                                              size,
                                              Text("Points".toUpperCase(),
                                                  style: style),
                                              size,
                                              Text(
                                                  "Total \nPoints"
                                                      .toUpperCase(),
                                                  style: style),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.lightGreen.shade300,
                                      thickness: 4,
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: itfgrils.length,
                                          itemBuilder: (context, index) {
                                            return Item(
                                                user: Container(),
                                                onTab: () {},
                                                index: index,
                                                itfgrils: itfgrils);
                                          }),
                                    ),
                                    Container(
                                      height: 80,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 60,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.lightGreen,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            border: Border.all(
                                                color: Colors.lightGreen),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "Add to my Calendar",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
