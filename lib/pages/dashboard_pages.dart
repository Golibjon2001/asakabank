
import 'package:asakabank/model/model_dashboard.dart';
import 'package:asakabank/model/model_followings.dart';
import 'package:asakabank/model/model_turnaments.dart';
import 'package:asakabank/pages/dashboard_setting.dart';
import 'package:asakabank/widgets/widget_dashboard_followings.dart';
import 'package:asakabank/widgets/widget_tappbar.dart';
import 'package:asakabank/widgets/widget_tatyana.dart';
import 'package:asakabank/widgets/widget_tournaments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<Dashboard>itms=[
    Dashboard(
      image:"assets/icons/place.svg",
      name:"+50↑",
      salary:"1,550 pts",
    ),
    Dashboard(
      image:"assets/icons/icon1.svg",
      name:"Events played",
      salary:"1,500 pts",
    ),
    Dashboard(
      image:"assets/icons/icon2.svg",
      name:"Events played",
      salary:"28",
    ),
    Dashboard(
      image:"assets/icons/icon3.svg",
      name:"Events played",
      salary:"1,550 pts",
    ),
  ];
  List <Followings> followingis=[
    Followings(
      userimage:"assets/images/user.png",
      username:"Tatyana Kim",
      flage:"assets/icons/flag_core.svg",
    ),
    Followings(
      userimage:"assets/images/user1.png",
      username:"Shohruh Qosimov",
      flage:"assets/icons/flag_russia.svg",
    ),
    Followings(
      userimage:"assets/images/user2.png",
      username:"Viktor Khegay",
      flage:"assets/icons/flag_usa.svg",
    ),
    Followings(
      userimage:"assets/images/user3.png",
      username:"Aleksandr Kashubin",
      flage:"assets/icons/flag_Spain.svg",
    ),
    Followings(
      userimage:"assets/images/user4.png",
      username:"Saidmakhmud \nSharipov",
      flage:"assets/icons/flag_uz.svg",
    ),
  ];
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
  ];
  bool ontrue=false;
  void onTrue(){
    setState(() {
      ontrue=!ontrue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:3,
        child:Scaffold(
          body:Column(
            children: [
             SizedBox(
               height:445,
               child: Padding(
                 padding: const EdgeInsets.only(top:30,left:20,right:20),
                 child: Column(
                   children: [
                     //images
                      Tatyana(
                       onTab:(){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const DashboardSetting()),
                         );
                       },
                       image:"assets/images/user.png",
                       name:"Tatyana Kim",
                       icons:"assets/icons/Setting.svg",
                     ),
                     const SizedBox(height:15,),
                     //tabbar
                     const TappBar(),
                     //category
                     SizedBox(
                       height:280,
                       width:double.infinity,
                       child:GridView.builder(
                           physics: const NeverScrollableScrollPhysics(),
                           gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
                             maxCrossAxisExtent:200,
                             childAspectRatio:3/2,
                             crossAxisSpacing:20,
                             mainAxisSpacing:5,
                           ),
                           itemCount:itms.length,
                           itemBuilder:(context,index){
                             return Column(
                               children: [
                                 Container(
                                   height:100,
                                   width:190,
                                   decoration:BoxDecoration(
                                     boxShadow:[
                                       BoxShadow(
                                         color: Colors.grey.shade100.withOpacity(0.7),
                                         spreadRadius:10,
                                         blurRadius:10,
                                         //offset: Offset(0,3),
                                       ),
                                     ],
                                     color:Colors.white,
                                     borderRadius: const BorderRadius.only(
                                         topLeft: Radius.circular(15),
                                         topRight: Radius.circular(15),
                                         bottomLeft: Radius.circular(15),
                                         bottomRight: Radius.circular(15)
                                     ),
                                   ),
                                   child:Padding(
                                     padding:const EdgeInsets.all(10),
                                     child:Row(
                                       children: [
                                         SizedBox(
                                           height:50,
                                           width:50,
                                           child:SvgPicture.asset(itms[index].image.toString()),
                                         ),
                                         const SizedBox(width:5),
                                         Column(
                                           crossAxisAlignment:CrossAxisAlignment.start,
                                           mainAxisAlignment:MainAxisAlignment.center,
                                           children:[
                                             Text(itms[index].name.toString(),style:const TextStyle(color:Colors.grey),),
                                             const SizedBox(height:5),
                                             Text(itms[index].salary.toString(),style:const TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:18),)
                                           ],
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             );
                           }
                       ),
                     ),
                   ],
                 ),
               ),
             ),
              Expanded(
                  child:Container(
                    decoration:BoxDecoration(
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.shade400.withOpacity(0.9),
                            spreadRadius:10,
                            blurRadius:10,
                            offset: const Offset(0,8),
                          ),
                        ],
                        color:Colors.white,
                      borderRadius:const BorderRadius.only(topLeft:Radius.circular(25),topRight:Radius.circular(25))
                    ),
                    child:Column(
                      children: [
                        Padding(
                          padding:const EdgeInsets.only(top:20),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              //Calendar
                              InkWell(
                                onTap:ontrue?null:(){
                                  onTrue();
                                },
                                  child:Text("Calendar",style:TextStyle(color:ontrue?Colors.black:Colors.grey,fontSize:25,fontWeight:FontWeight.bold))
                              ),
                              const SizedBox(width:55,),
                              //Followings
                              InkWell(
                                onTap:ontrue?(){
                                  onTrue();
                                }:null,
                                  child:Text("Followings",style:TextStyle(color:ontrue?Colors.grey:Colors.black,fontSize:25,fontWeight:FontWeight.bold),)
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child:ontrue?
                                //calendar
                            ListView(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      TableCalendar(
                                        firstDay: DateTime.utc(2010, 10, 16),
                                        lastDay: DateTime.utc(2030, 3, 14),
                                        focusedDay: DateTime.now(),
                                      ),
                                      const SizedBox(height:20,),
                                      Container(
                                        margin:const EdgeInsets.only(left:15,right:15),
                                        height:300,
                                        child: ListView.builder(
                                            itemCount:itm.length,
                                            itemBuilder:(contex,index){
                                              return WidgetTournaments(onTab: () {  }, itm:itm, index:index,);
                                            }
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ):
                                //categoria
                            ListView.builder(
                              itemCount:followingis.length,
                                itemBuilder:(context,index){
                                  return WidgetDashboardFollow(
                                    index:index,
                                    followingis:followingis,
                                  );
                                }
                            ),
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
    );
  }

}
