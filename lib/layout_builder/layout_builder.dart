import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 200) {
            return _OneColumnWidget();
          } else {
            return _TwoColumnWidget();
          }
        },
      ),
    );
  }
}

class _TwoColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(height: 50, width: 200, color: Colors.blue),
            SizedBox(height: 100),
            Container(height: 50, width: 200, color: Colors.blue),
            SizedBox(height: 100),
            Container(height: 50, width: 200, color: Colors.blue),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 100),
            Container(height: 50, width: 100, color: Colors.blue),
            SizedBox(height: 100),
            Container(height: 50, width: 100, color: Colors.blue),
            SizedBox(height: 100),
            Container(height: 50, width: 100, color: Colors.blue),
          ],
        ),
      ],
    );
  }
}

class _OneColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 50, width: 200, color: Colors.blue),
        SizedBox(height: 100),
        Container(height: 50, width: 200, color: Colors.blue),
        SizedBox(height: 100),
        Container(height: 50, width: 200, color: Colors.blue),
      ],
    );
  }
}
