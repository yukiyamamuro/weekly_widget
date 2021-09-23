import 'package:flutter/material.dart';
import 'package:weekly_widget/safe_area/real_safearea_page.dart';

import 'not_safearea_page.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SafeArea'),
        ),
        body: ListView(
          children: [
            ListTile(
                title: Text('Not SafeArea'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotSafeAreaPage(),
                      fullscreenDialog: true,
                    ),
                  );
                }),
            ListTile(
                title: Text('SafeArea'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RealSafeAreaPage(),
                      fullscreenDialog: true,
                    ),
                  );
                }),
          ],
        ));
  }
}
