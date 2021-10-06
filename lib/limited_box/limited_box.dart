import 'package:flutter/material.dart';

class LimitedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limited Box'),
      ),
      body: ListView(
        children: [
          for (var i = 0; i < 7; i++)
            LimitedBox(
              maxHeight: 200,
              child: Container(
                color: Colors.blue[i * 100],
              ),
            ),
        ],
      ),
    );
  }
}
