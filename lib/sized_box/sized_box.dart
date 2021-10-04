import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sized Box'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Image.asset('assets/images/monster.png'),
        ),
      ),
    );
  }
}
