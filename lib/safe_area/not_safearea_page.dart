import 'package:flutter/material.dart';

class NotSafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('not safe'),
      ),
      body: Row(
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
          Container(width: 80, color: Colors.yellow),
        ],
      ),
    );
  }
}
