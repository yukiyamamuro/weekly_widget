import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey,
              child: Image.asset('assets/images/monster.png'),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey,
              child: FittedBox(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fill,
                child: Image.asset('assets/images/monster.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
