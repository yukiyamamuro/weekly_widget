import 'dart:math';

import 'package:flutter/material.dart';

class TransformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('transform'),
      ),
      body: Column(
        children: [
          Center(
            child: Transform.rotate(
              angle: pi / 4,
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
          Center(
            child: Transform(
              transform: Matrix4.skewX(0.3),
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
          Center(
            child: Transform(
              transform: Matrix4.skewX(0.3),
              child: Image.asset('assets/images/monster.png'),
            ),
          ),
        ],
      ),
    );
  }
}
