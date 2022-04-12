import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:46,
      decoration:BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(18),
      ),
      child:TextField(
        decoration:InputDecoration(
          border:InputBorder.none,
          icon:const Padding(
            padding: EdgeInsets.only(left:5),
            child: Icon(Icons.search),
          ),
          hintText:"Search",
          hintStyle:TextStyle(color:Colors.grey[400],fontSize:20),
        ),
      ),
    );
  }
}
