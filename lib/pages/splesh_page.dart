import 'dart:async';

import 'package:asakabank/pages/hom_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpleshPage extends StatefulWidget {
  const SpleshPage({Key? key}) : super(key: key);

  @override
  _SpleshPageState createState() => _SpleshPageState();
}

class _SpleshPageState extends State<SpleshPage> {
  _initTimer() {
    Timer(const Duration(seconds: 2), () {
      _callHomPage();
    });
  }

  _callHomPage() {
    Navigator.pushReplacementNamed(context, HomPage.id);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Junior Tennis\n   organizer".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 36,
                  fontFamily: "Firasansbolditalic"),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash_image.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //const SizedBox(height:10,),
          ],
        ),
      ),
    );
  }
}
