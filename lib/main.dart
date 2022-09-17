import 'package:cupertino_app/Pages/Page1/page1_details.dart';
import 'package:cupertino_app/Pages/Page2/page2_details.dart';
import 'package:flutter/cupertino.dart';
import 'Pages/TabScaffold/tab_scaffold.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: TabScaffold(),
    );
  }
}
