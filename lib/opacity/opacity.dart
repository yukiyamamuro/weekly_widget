import 'package:flutter/material.dart';

class OpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _Cube(),
          _Cube(),
          _Cube(),
        ],
      ),
    );
  }
}

class _Cube extends StatefulWidget {
  @override
  _CubeState createState() => _CubeState();
}

class _CubeState extends State<_Cube> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    print('opacity clicked!!!');
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Opacity(
        opacity: selected ? 1 : 0.25,
        child: Center(
          child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.blue,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
