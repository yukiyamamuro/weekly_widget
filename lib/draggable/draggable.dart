import 'package:flutter/material.dart';

class DraggablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Center(
        child: Column(
          children: [
            Draggable(
              child: Container(
                color: Colors.cyan,
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),
              feedback: Container(
                height: 100,
                width: 100,
                color: Colors.lightBlueAccent,
                child: Text(
                  'dragging!!',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              childWhenDragging: Container(
                height: 100,
                width: 100,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 300),
            DragTarget(builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              );
            })
          ],
        ),
      ),
    );
  }
}
