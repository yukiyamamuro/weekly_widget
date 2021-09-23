import 'package:flutter/material.dart';

class RealSafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('not safe'),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 80,
              color: Colors.brown,
            ),
            Container(
              width: 80,
              color: Colors.red,
            ),
            Container(
              width: 80,
              color: Colors.orange,
            ),
            Container(
              width: 80,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
