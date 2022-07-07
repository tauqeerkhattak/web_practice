import 'package:flutter/material.dart';

class PaintService extends CustomPainter {
  final Offset center;

  PaintService({
    required this.center,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..color = Colors.white;
    path.addRect(
      Rect.fromCenter(
        center: center,
        width: 250,
        height: 150,
      ),
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
