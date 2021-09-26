import 'package:flutter/material.dart';
import 'package:weekly_widget/animated_container/animated_container.dart';
import 'package:weekly_widget/fade_transition/fade_transition.dart';
import 'package:weekly_widget/feature_builder/feature_builder.dart';
import 'package:weekly_widget/floating_action_button/floating_action_button.dart';
import 'package:weekly_widget/opacity/opacity.dart';
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
          ListTile(
            title: const Text('Animated Container'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimatedContainerPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Opacity'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OpacityPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Feature Builder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FeatureBuilderPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Fade Transition'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FadeTransitionPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Floating Action button'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FloatingActionButtonPage(),
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
