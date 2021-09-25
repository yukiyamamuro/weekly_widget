import 'package:flutter/material.dart';
import 'package:weekly_widget/safe_area/safe_area.dart';
import 'package:weekly_widget/wrap/wrap.dart';

import 'expanded/expanded.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weekly Widget',
      home: TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget一覧'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('SafeArea'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SafeAreaPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Expanded'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpandedPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Wrap'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WrapPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
