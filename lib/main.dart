import 'package:flutter/material.dart';
import 'package:web_practice/screens/home.dart';

void main() {
  runApp(const WebPractice());
}

class WebPractice extends StatelessWidget {
  const WebPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
