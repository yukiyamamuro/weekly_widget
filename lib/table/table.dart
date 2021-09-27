import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        defaultColumnWidth: IntrinsicColumnWidth(),
        children: [
          TableRow(
            children: [
              HighestWidget(),
              LowWidget(),
              HighestWidget(),
            ],
          ),
          TableRow(
            children: [
              HighestWidget(),
              LowWidget(),
              HighestWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class LowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}

class HighestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 50,
      height: 100,
      color: Colors.blue,
    );
  }
}
