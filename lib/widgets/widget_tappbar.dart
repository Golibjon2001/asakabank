import 'package:flutter/material.dart';
class TappBar extends StatelessWidget {
  const TappBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:3,
        child:Container(
          height:40,
          decoration:BoxDecoration(
              color:Colors.white,
              border:Border.all(color:Colors.grey.shade400),
              borderRadius:BorderRadius.circular(8)
          ),

          child: TabBar(
            indicator:BoxDecoration(
                color:Colors.lightGreen,
                borderRadius:BorderRadius.circular(8)
            ),
            tabs:const [
              Tab(text:"ITF ranking",),
              Tab(text:"ATF ranking",),
              Tab(text:"TE ranking",),
            ],
          ),
        ),
    );
  }
}
