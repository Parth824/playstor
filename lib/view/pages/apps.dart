import 'package:flutter/material.dart';
import 'package:paly_sotre/view/compoend/Apps_compoends.dart';
import 'package:paly_sotre/view/compoend/drew.dart';
import 'package:paly_sotre/view/compoend/topchars.dart';

class Apps_page extends StatefulWidget {
  const Apps_page({super.key});

  @override
  State<Apps_page> createState() => _Apps_pageState();
}

class _Apps_pageState extends State<Apps_page>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: dr_com(),
      appBar: AppBar(
        leading: Icon(Icons.abc,size: 0,),
        elevation: 1,
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        // toolbarHeight: 150,
        centerTitle: true,
        title: Container(
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        Scaffold.of(context).openDrawer();
                      });
                    },
                    child: Icon(Icons.menu),
                  );
                }
              ),
              hintText: "Search for appps & games",
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              suffixIcon: Icon(Icons.keyboard_voice_outlined),
            ),
          ),
        ),
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.green.shade800,
          labelColor: Colors.green.shade800,
          unselectedLabelColor: Colors.black54,
          automaticIndicatorColorAdjustment: true,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              text: "For you",
            ),
            Tab(
              text: "Top charts",
            ),
            Tab(
              text: "Categories",
            ),
            Tab(
              text: "Children",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          App_com(),
          topchar_com(),
          Text("Page3"),
          Text("Page4"),
        ],
      ),
    );
  }
}
