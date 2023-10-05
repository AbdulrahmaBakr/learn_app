import 'package:flutter/material.dart';

import 'screens/homePage.dart';

void main() {
  runApp(TikaTakaAPP());
}

class TikaTakaAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
