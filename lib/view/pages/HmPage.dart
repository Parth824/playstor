import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paly_sotre/view/pages/apps.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({super.key});

  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  int k = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: k,
          children: [
            Apps_page(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: k,
          selectedItemColor: Colors.green.shade800,
          unselectedItemColor: Colors.black54,
          onTap: (value) {
            setState(() {
              k = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.game_controller,
              ),
              label: "Games",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: "Apps",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_movies),
              label: "Movies & TV",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: "Books",
            ),
          ],
        ),
      ),
    );
  }
}
