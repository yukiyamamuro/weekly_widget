import 'package:flutter/material.dart';
import 'package:weekly_widget/absorb_pointer/absorb_pointer.dart';
import 'package:weekly_widget/animated_container/animated_container.dart';
import 'package:weekly_widget/clip_r_rect/clip_r_rect.dart';
import 'package:weekly_widget/custom_paint/custom_paint.dart';
import 'package:weekly_widget/fade_in_image/fade_in_image.dart';
import 'package:weekly_widget/fade_transition/fade_transition.dart';
import 'package:weekly_widget/feature_builder/feature_builder.dart';
import 'package:weekly_widget/fitted_box/fitted_box.dart';
import 'package:weekly_widget/floating_action_button/floating_action_button.dart';
import 'package:weekly_widget/hero/hero.dart';
import 'package:weekly_widget/inherited_widget/inherited_widget2.dart';
import 'package:weekly_widget/opacity/opacity.dart';
import 'package:weekly_widget/page_view/page_view.dart';
import 'package:weekly_widget/positioned/positioned.dart';
import 'package:weekly_widget/safe_area/safe_area.dart';
import 'package:weekly_widget/silver_app_bar/silver_app_bar.dart';
import 'package:weekly_widget/sized_box/sized_box.dart';
import 'package:weekly_widget/sliver_grid_and_list/sliver.dart';
import 'package:weekly_widget/spacer/spacer.dart';
import 'package:weekly_widget/stream_builder/stream_builder.dart';
import 'package:weekly_widget/table/table.dart';
import 'package:weekly_widget/tooltip/tooltip.dart';
import 'package:weekly_widget/transform/transform.dart';
import 'package:weekly_widget/value_listenable_builder/value_listenable_builder.dart';
import 'package:weekly_widget/wrap/wrap.dart';

import 'align/align.dart';
import 'animated_builder/animated_builder.dart';
import 'animated_list/animated_list.dart';
import 'backdrop_filter/backdrop_filter.dart';
import 'dismissible/dismissible.dart';
import 'draggable/draggable.dart';
import 'expanded/expanded.dart';
import 'flexible/flexible.dart';
import 'layout_builder/layout_builder.dart';

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
          ListTile(
            title: const Text('Page View'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageViewPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Table'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TablePage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Silver App Bar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SilverAppBarPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Sliver Grid&List'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SliverPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Fade In Image'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FadeInImagePage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Stream Builder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StreamBuilderPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Inherited Widget'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InheritedWidgetPage2(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('ClipRRect'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClipRRectPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Hero'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('CustomPaint'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomPaintPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Tooltip'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TooltipPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          ListTile(
            title: const Text('FittedBox'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FittedBoxPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          ListTile(
            title: const Text('LayoutBuilder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LayoutBuilderPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          ListTile(
            title: const Text('AbsorbPointer'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AbsorbPointerPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Transform'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransformPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('BackdropFilter'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BackdropFilterPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Align'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlignPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Positioned'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PositionedPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('AnimatedBuilder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimatedBuilderPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Dismissible'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DismissiblePage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Sizedbox'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SizedBoxPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('ValueListenableBuilder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ValueListenableBuilderPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Draggable'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DraggablePage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Animated List'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimatedListPage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Flexible'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlexiblePage(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Spacer'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SpacerPage(),
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
