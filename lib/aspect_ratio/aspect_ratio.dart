import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio'),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Card(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
