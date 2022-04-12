import 'package:asakabank/model/model_followings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class WidgetDashboardFollow extends StatelessWidget {
   final int index;
   final List <Followings> followingis;
  const WidgetDashboardFollow({Key? key,required this.index,required this.followingis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:const EdgeInsets.only(left:15,right:15),
          child: Column(
            children:[
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height:50,
                        width:50,
                        child:Image.asset(followingis[index].userimage.toString(),fit:BoxFit.cover,),
                      ),
                      const SizedBox(width:10,),
                      Text(followingis[index].username.toString(),style:const TextStyle(fontSize:18,fontWeight:FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height:20,
                          width:20,
                          child: SvgPicture.asset(followingis[index].flage.toString())),
                      const SizedBox(width:25,),
                      Container(
                        height:32,
                        decoration:BoxDecoration(
                            border:Border.all(color:Colors.grey),
                            borderRadius:BorderRadius.circular(16)
                        ),
                        child:Container(
                          margin:const EdgeInsets.only(left:15,right:15,),
                          child: const Center(child: Text("Unfollow",style:TextStyle(color:Colors.black),)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}

