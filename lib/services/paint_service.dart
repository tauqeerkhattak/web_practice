import 'package:flutter/material.dart';

class PaintService extends CustomPainter {
  final Offset center;
  final double? width;

  PaintService({
    required this.center,
    this.width,
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
        width: width ?? 250,
        height: 150,
      ),
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool hitTest(Offset position) {
    Path path = Path();
    //add your lines/curves here
    path.close();
    return path.contains(position);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
