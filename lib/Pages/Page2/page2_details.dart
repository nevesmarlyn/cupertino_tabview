// ignore_for_file: prefer_const_constructors

import 'package:cupertino_app/Pages/Page2/page2.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Page 2'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Details'),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const ProfilePageDetails();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
