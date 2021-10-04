import 'package:flutter/material.dart';

class DismissiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissble'),
      ),
      body: Column(
        children: [
          Dismissible(
            child: ListTile(
              title: Text('Content1'),
            ),
            background: Container(
              color: Colors.green,
              child: Icon(Icons.check),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: Icon(Icons.cancel),
            ),
            key: ValueKey('key'),
            direction: DismissDirection.vertical,
          ),
        ],
      ),
    );
  }
}
