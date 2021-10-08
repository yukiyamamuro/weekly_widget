import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
      ),
      body: Center(
        child: Placeholder(
          color: Colors.red,
          fallbackHeight: 100,
        ),
      ),
    );
  }
}
