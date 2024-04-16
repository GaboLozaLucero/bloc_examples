import 'package:flutter/material.dart';

class BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint() .. color=const Color(0xffF5F5F7);
    canvas.drawLine(
      Rect.fromCenter(center: Offset(center.width, center.height), width: double.infinity, height: double.infinity) as Offset,
      const Offset(0.5, 2.6),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
