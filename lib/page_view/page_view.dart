import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View'),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const [
        Center(
          child: Text('First page'),
        ),
        Center(
          child: Text('Second page'),
        ),
        Center(
          child: Text('Third page'),
        ),
      ],
    );
  }
}
