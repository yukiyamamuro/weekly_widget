import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backdrop Filter'),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/monster.png'),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
