import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer'),
      ),
      body: Row(
        children: [
          Container(color: Colors.black12, child: Text('hello')),
          Spacer(),
          Container(color: Colors.black12, child: Text('hello')),
          Spacer(flex: 1),
          Container(color: Colors.black12, child: Text('hello')),
          Spacer(flex: 9),
          Container(color: Colors.black12, child: Text('hello')),
        ],
      ),
    );
  }
}
