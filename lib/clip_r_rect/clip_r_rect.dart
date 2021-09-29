import 'package:flutter/material.dart';

class ClipRRectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip R Rect'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network('https://picsum.photos/250?image=11'),
        ),
      ),
    );
  }
}
