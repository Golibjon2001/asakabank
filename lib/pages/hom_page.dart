import 'package:asakabank/pages/dashboard_pages.dart';
import 'package:asakabank/pages/rankings_pages.dart';
import 'package:asakabank/pages/tournaments_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomPage extends StatefulWidget {
  static const String id = "HomPage";

  const HomPage({Key? key}) : super(key: key);

  @override
  _HomPageState createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  bool isTrue = false;

  void istrue() {
    setState(() {
      isTrue = !isTrue;
    });
  }

  int currentIndex = 0;
  List screens = [
    const TournamentsPage(),
    const DashBoardPage(),
    const RankingsPage(),
  ];
  DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timeBackPressed);
        final isExitWaring = difference >= const Duration(seconds: 2);
        timeBackPressed = DateTime.now();
        if (isExitWaring) {
          const message = "Press back again to exit";
          Fluttertoast.showToast(msg: message, fontSize: 18);
          return false;
        } else {
          Fluttertoast.cancel();
          return true;
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: screens[currentIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            onTabTapped(1);
          },
          tooltip: "add",
          child: SvgPicture.asset("assets/icons/dash2.svg"),
          elevation: 4,
          backgroundColor: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          iconSize: 30,
          unselectedFontSize: 10,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/to.svg"),
              label: "Tournaments",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(""),
              label: "",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/ranking.svg"),
              label: "Rankings",
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
