import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.cyan,
          ),
          Flexible(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(9),
              color: Colors.teal,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
