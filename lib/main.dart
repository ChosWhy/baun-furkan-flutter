import 'package:flutter/material.dart';
import 'package:flutterquizone/screen_two.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenTwo(),
    );
  }
}

