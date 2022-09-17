import 'package:flutter/cupertino.dart';

class ProfilePageDetails extends StatelessWidget {
  const ProfilePageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Page 2 Details'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
