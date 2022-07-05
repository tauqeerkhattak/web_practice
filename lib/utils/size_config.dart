import 'package:flutter/material.dart';

class SizeConfig {
  static double _height = 0;
  static double _width = 0;

  static void init(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _height = size.height;
    _width = size.width;
  }

  static double get height => _height;

  static double get width => _width;
}
