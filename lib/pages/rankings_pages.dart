import 'package:asakabank/model/model_itfgrils.dart';
import 'package:asakabank/pages/rankings_playerdetails.dart';
import 'package:asakabank/widgets/widget_item.dart';
import 'package:asakabank/widgets/widget_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RankingsPage extends StatefulWidget {
  const RankingsPage({Key? key}) : super(key: key);

  @override
  _RankingsPageState createState() => _RankingsPageState();
}

class _RankingsPageState extends State<RankingsPage> {
  bool ontrue = false;

  void OnTrue() {
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
    var style = const TextStyle(fontSize: 11, color: Colors.grey);
    var size = const SizedBox(
      width: 20,
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Rankings",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            //search
            const Padding(
              padding: EdgeInsets.only(top:10,left:18,right:18),
              child: Search(),
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
            Expanded(
              child: TabBarView(
                children: [
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 200,
                          child: TabBar(
                            indicatorColor: Colors.lightGreen,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Text(
                                "Girls",
                                style: TextStyle(fontSize:18),
                              ),
                              Text(
                                "Boys",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
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
                                        Text("Year of \nbirth".toUpperCase(),
                                            style: style),
                                        size,
                                        Text("Points".toUpperCase(),
                                            style: style),
                                        size,
                                        Text("Total \nPoints".toUpperCase(),
                                            style: style),
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
                                            user:Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Colors.grey.shade100,
                                                    Colors.grey.shade100,
                                                  ],
                                                ),
                                              ),
                                              child: SvgPicture.asset("assets/icons/frame.svg"),
                                            ),
                                              onTab:(){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const RankingsPlayerDetails()),
                                                );
                                              },
                                              index: index, itfgrils: itfgrils);
                                        }),
                                  ),
                                ],
                              ),
                              const Center(child: Text("Boys",style:TextStyle(fontSize:20),)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 250,
                          child: TabBar(
                            indicatorColor: Colors.lightGreen,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Text(
                                "Girls U14",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Boys U14",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              const Center(child: Text("Girls U14",style:TextStyle(fontSize:20),)),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
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
                                        Text("Points".toUpperCase(),
                                            style: style),
                                        size,
                                        Text("Total \nPoints".toUpperCase(),
                                            style: style),
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
                                            user:Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Colors.grey.shade100,
                                                    Colors.grey.shade100,
                                                  ],
                                                ),
                                              ),
                                              child: SvgPicture.asset("assets/icons/frame.svg"),
                                            ),
                                            onTab:(){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const RankingsPlayerDetails()),
                                              );
                                            },
                                              index: index, itfgrils: itfgrils);
                                        }),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  DefaultTabController(
                    length: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width:550,
                          child: TabBar(
                            indicatorColor: Colors.lightGreen,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Text("Girls", style: TextStyle(fontSize:15),),
                              Text("Boys", style: TextStyle(fontSize:15),),
                              Text("Girls U14", style: TextStyle(fontSize:15),),
                              Text("Boys U14", style: TextStyle(fontSize:15),),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text("#", style: style),
                                        const SizedBox(width: 18),
                                        Text(
                                          "Player name".toUpperCase(),
                                          style: style,
                                        ),
                                        const SizedBox(width: 45),
                                        Text("Nation".toUpperCase(),
                                            style: style),
                                        size,
                                        Text("Points".toUpperCase(),
                                            style: style),
                                        size,
                                        Text("Total \nPoints".toUpperCase(),
                                            style: style),
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
                                            user: Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Colors.grey.shade100,
                                                    Colors.grey.shade100,
                                                  ],
                                                ),
                                              ),
                                              child: SvgPicture.asset("assets/icons/frame.svg"),
                                            ),
                                              onTab:(){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const RankingsPlayerDetails()),
                                                );
                                              },
                                              index: index, itfgrils: itfgrils);
                                        }),
                                  ),
                                ],
                              ),
                              const Center(child: Text("Boys",style:TextStyle(fontSize:20),)),
                              const Center(child: Text("GirlsU14",style:TextStyle(fontSize:20),)),
                              const Center(child: Text("BoysU14",style:TextStyle(fontSize:20),)),
                            ],
                          ),
                        ),
                      ],
                    ),
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
