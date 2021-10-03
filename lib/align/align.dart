import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Container(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('bottom left'),
              ),
              height: 150,
              width: 300,
              color: Colors.blue.withOpacity(0.1),
            ),
          ),
          SizedBox(height: 100),
          Container(
            child: Align(
              alignment: Alignment(0.30, 0.40),
              child: Text('custom position'),
            ),
            height: 150,
            width: 300,
            color: Colors.blue.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
