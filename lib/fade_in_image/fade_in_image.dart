import 'package:flutter/material.dart';

class FadeInImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage'),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          fadeInCurve: Curves.bounceIn,
          placeholder: '',
          image: 'https://picsum.photos/250?image=11',
        ),
      ),
    );
  }
}
