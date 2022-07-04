import 'package:flutter/material.dart';

void main() {
  runApp(const WebPractice());
}

class WebPractice extends StatelessWidget {
  const WebPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
