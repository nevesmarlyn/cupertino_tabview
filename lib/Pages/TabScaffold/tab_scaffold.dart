// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:cupertino_app/Pages/Page1/page1_details.dart';
import 'package:cupertino_app/Pages/Page2/page2_details.dart';
import 'package:flutter/cupertino.dart';

class TabScaffold extends StatefulWidget {
  const TabScaffold({
    super.key,
  });

  @override
  State<TabScaffold> createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabScaffold> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetsList = [
      HomePage(),
      ProfilePage(),
    ];
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Tab 2',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return widgetsList[index];
          },
        );
      },
    );
  }
}
