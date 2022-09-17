// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cupertino_app/Pages/Page1/page1.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Page 1'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Details'),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const HomePageDetails();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
