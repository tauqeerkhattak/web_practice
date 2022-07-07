import 'package:flutter/material.dart';

class ClipService extends CustomClipper<Path> {
  final Offset center;

  ClipService({
    required this.center,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addRect(
      Rect.fromCenter(
        center: center,
        width: 250,
        height: 150,
      ),
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
