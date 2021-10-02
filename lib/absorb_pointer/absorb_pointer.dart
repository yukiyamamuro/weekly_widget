import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absorb Pointer'),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          AbsorbPointer(
            child: Center(
              child: Column(
                children: [
                  Text('タッチできない'),
                  TextButton(
                    onPressed: () {
                      print('Pressed');
                    },
                    child: Text('button'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: Column(
              children: [
                Text('タッチできる'),
                TextButton(
                  onPressed: () {
                    print('Pressed');
                  },
                  child: Text('button'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
