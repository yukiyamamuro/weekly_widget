import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rich text'),
      ),
      body: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(text: 'its'),
            TextSpan(text: 'all', style: TextStyle(color: Colors.purple)),
            TextSpan(text: 'widgets'),
          ],
        ),
      ),
    );
  }
}
