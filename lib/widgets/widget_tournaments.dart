import 'package:asakabank/model/model_turnaments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WidgetTournaments extends StatelessWidget {
  final List<Turnaments> itm;
  final VoidCallback onTab;
  final int index;

  const WidgetTournaments(
      {Key? key, required this.itm, required this.index, required this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 19),
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 10,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 55),
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 15,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.lightGreen, width: 4)),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2, top: 5),
                      child: Column(
                        children: [
                          Text(
                            itm[index].mons.toString(),
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                          Text(itm[index].data.toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                    itm[index].flag.toString()),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                itm[index].flagname.toString(),
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: InkWell(
                            onTap: onTab,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 2, bottom: 2),
                              child: Text(itm[index].st.toString()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    itm[index].name.toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("10-14 y.o",
                          style: TextStyle(color: Colors.grey.shade400)),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.grid_view,
                        color: Colors.grey.shade400,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Category 1",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
