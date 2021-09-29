import 'package:flutter/material.dart';

class CustomPaintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomPaint'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(300, 500),
          painter: MyPainter(),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = Colors.greenAccent;
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    // 四角（塗りつぶし）
    paint.color = Colors.deepOrange;
    var path = Path();
    path.moveTo(size.width / 3, size.height / 5);
    path.lineTo(size.width / 3, size.height / 5 * 2);
    path.lineTo(size.width / 3 * 2, size.height / 5 * 2);
    path.lineTo(size.width / 3 * 2, size.height / 5);
    path.close();
    canvas.drawPath(path, paint);

    // 四角（外線）
    paint = new Paint()
      ..color = Colors.teal
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    path = Path();
    path.moveTo(size.width / 3, size.height / 5 * 3);
    path.lineTo(size.width / 3, size.height / 5 * 4);
    path.lineTo(size.width / 3 * 2, size.height / 5 * 4);
    path.lineTo(size.width / 3 * 2, size.height / 5 * 3);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter old) {
    return true;
  }
}
