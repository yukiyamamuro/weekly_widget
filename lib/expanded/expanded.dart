import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(3),
                color: Colors.yellow,
                width: 100,
                height: 100,
                child: Center(child: Text('nomal widget')),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: Text('expanded'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(3),
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: Center(child: Text('normal widget')),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(3),
                color: Colors.yellow,
                width: 100,
                height: 100,
                child: Center(child: Text('nomal widget')),
              ),
              Container(
                color: Colors.orange,
                child: Text('Not expanded'),
              ),
              Container(
                margin: EdgeInsets.all(3),
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: Center(child: Text('normal widget')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
