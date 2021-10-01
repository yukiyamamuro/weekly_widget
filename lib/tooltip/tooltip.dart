import 'package:flutter/material.dart';

class TooltipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip'),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.stop),
              tooltip: 'Stop',
              iconSize: 100,
            ),
            Tooltip(
              message: 'message',
              child: Icon(Icons.message),
            )
          ],
        ),
      ),
    );
  }
}
