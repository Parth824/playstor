import 'package:flutter/material.dart';
import 'package:paly_sotre/view/compoend/Goldes.dart';

import '../pages/page_view.dart';

class topchar_com extends StatefulWidget {
  const topchar_com({super.key});

  @override
  State<topchar_com> createState() => _topchar_comState();
}

class _topchar_comState extends State<topchar_com> {
  bool k = false;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Show install apps",
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Switch(
                  value: k,
                  onChanged: (val) {
                    setState(() {
                      k = val;
                    });
                  },
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      "Top free",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      "Top grossing",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      "Trending",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      "Top padding",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ...golbes.all_item
                .map(
                  (e) => Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => per_view(),
                                  settings: RouteSettings(arguments: e),
                                ),
                              );
                          });
                        },
                        child: Row(
                          
                          children: [SizedBox(
                            width: 10,
                          ),
                            (golbes.all_item.indexOf(e)+1<10)?Text("0${golbes.all_item.indexOf(e) + 1}"):Text("${golbes.all_item.indexOf(e) + 1}"),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 65,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network("${e['i']}"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${e['n']}",
                                  style: TextStyle(
                                      fontSize: 11, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Tastyplli",
                                  style: TextStyle(fontSize: 9, color: Colors.grey),
                                ),
                                Text(
                                  "${e['s']}",
                                  style: TextStyle(fontSize: 9, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
