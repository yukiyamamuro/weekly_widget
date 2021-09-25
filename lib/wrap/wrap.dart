import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapWidget'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Center(
              child: Text('space'),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              SquareContainer(),
              SquareContainer(),
              SquareContainer(),
              SquareContainer(),
              SquareContainer(),
              SquareContainer(),
              SquareContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

class SquareContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      height: 70,
      width: 70,
      child: Center(child: Text("Container")),
    );
  }
}
