import 'package:flutter/material.dart';

class PositionedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('positioned'),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 500,
            right: 200,
            height: 100,
            width: 100,
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
