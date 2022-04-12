
import 'package:asakabank/model/model_itfgrils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Item extends StatelessWidget {
  VoidCallback onTab;
  List<ItfGrils> itfgrils;
  final int index;
  final Container user;
  Item({required this.index, required this.itfgrils,required this.onTab,required this.user, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userstyle = const TextStyle(fontSize: 18, color: Colors.black);
    var size = const SizedBox(
      width: 20,
    );
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("${index + 1}",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey)),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      itfgrils[index].name.toString(),
                      style: userstyle,
                    ),
                    size,
                    SizedBox(
                        height: 28,
                        width: 28,
                        child:
                            SvgPicture.asset(itfgrils[index].flag.toString())),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(itfgrils[index].age.toString(),
                        style: const TextStyle(fontSize: 12)),
                    const SizedBox(
                      width: 42,
                    ),
                    Text(itfgrils[index].age2.toString(),
                        style: const TextStyle(fontSize: 12)),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(itfgrils[index].age3.toString(),
                        style: const TextStyle(fontSize: 12)),
                  ],
                ),
                InkWell(
                  onTap:onTab,
                  child:user,
                ),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
