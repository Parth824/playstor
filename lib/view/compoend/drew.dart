import 'package:flutter/material.dart';

class dr_com extends StatefulWidget {
  const dr_com({super.key});

  @override
  State<dr_com> createState() => _dr_comState();
}

class _dr_comState extends State<dr_com> {
  bool isios = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.amber,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/u6.jpg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Parth Dhameliya",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "dhameliyaParth824@gmail.com",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.ios_share,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Switch(
                              value: isios,
                              onChanged: (val) {
                                setState(() {
                                  isios = val;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
