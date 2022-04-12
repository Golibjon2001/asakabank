import 'package:asakabank/model/model_turnaments.dart';
import 'package:asakabank/pages/tournament_details.dart';
import 'package:asakabank/widgets/widget_search.dart';
import 'package:asakabank/widgets/widget_tournaments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TournamentsPage extends StatefulWidget {
  const TournamentsPage({Key? key}) : super(key: key);

  @override
  _TournamentsPageState createState() => _TournamentsPageState();
}

class _TournamentsPageState extends State<TournamentsPage> {
  List <Turnaments> itm=[
    Turnaments(
        flag:"assets/icons/flag_germany.svg",
        flagname:"Berlin",
        mons:"Nov",
        name:"Tournament title long",
        data:"27",
        st:"ITF"
    ),
    Turnaments(
        flag:"assets/icons/flag_usa.svg",
        flagname:"Miami",
        mons:"Dec",
        name:"Tournament title long",
        data:"4",
        st:"TE"
    ),
    Turnaments(
        flag:"assets/icons/flag_Spain.svg",
        flagname:"Madrid",
        mons:"Dec",
        name:"Tournament title long",
        data:"9",
        st:"ATF"
    ),
    Turnaments(
        flag:"assets/icons/flag_uz.svg",
        flagname:"Tashkent",
        mons:"Dec",
        name:"Tournament title long",
        data:"7",
        st:"ORANGE BOWL"
    ),
    Turnaments(
        flag:"assets/icons/flag_russia.svg",
        flagname:"Moscow",
        mons:"Jan",
        name:"Tournament title long",
        data:"89",
        st:"ITF"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      appBar:AppBar(
        elevation:0,
        backgroundColor:Colors.white,
        title:const Text("Tournaments",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.bold),),
        actions:[
          SizedBox(
            height:20,
            width:20,
            child: SvgPicture.asset("assets/icons/icon.svg"),
          ),
          const SizedBox(width:10,)
        ],
        centerTitle:true,
      ),
      body:Padding(
        padding: const EdgeInsets.only(top:10,left:18,right:18),
        child: Column(
          children: [
            //search
            const Search(),
            const SizedBox(height:20,),
            Expanded(
              child: ListView.builder(
                itemCount:itm.length,
                  itemBuilder:(contex,index){
                    return WidgetTournaments(
                      onTab:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TournamentDetails()),
                        );
                      },
                      index:index,
                      itm:itm,
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }

}
