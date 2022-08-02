import 'package:RefreshFlutter/screens/note_screen.dart';
import 'package:RefreshFlutter/screens/search_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    NoteView(),
    const Text("Person"),
  ];

  void onSelectedIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My tickets"),
      // ),
      body: Center(
          child: _widgetOptions[selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onSelectedIndex,
        elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("search"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                title: Text("receipt"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("person"),
            ),
          ]
      ),
    );
  }
}
