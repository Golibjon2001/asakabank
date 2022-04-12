import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Tatyana extends StatelessWidget {
  final String image;
  final String name;
  final String icons;
  final VoidCallback onTab;
  const Tatyana({Key? key,required this.image,required this.name,required this.icons,required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      height:80,
      child:Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height:50,
                width:50,
                decoration:BoxDecoration(
                    image:DecorationImage(
                        fit:BoxFit.cover,
                        image:AssetImage(image)
                    )
                ),
              ),
              const SizedBox(width:10,),
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text(name,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
                  Row(
                    children: [
                      Text("2003 (18.y.o) from",style:TextStyle(color:Colors.grey.shade500)),
                      const SizedBox(width:5,),
                      SizedBox(
                        height:13,
                        width:16,
                        child:SvgPicture.asset("assets/icons/flag_uz.svg"),
                      ),
                      const SizedBox(width:5,),
                      Text("Uzbekistan",style:TextStyle(color:Colors.grey.shade500),)
                    ],
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap:onTab,
              child: SvgPicture.asset(icons),
          ),
        ],
      ),
    );
  }
}
