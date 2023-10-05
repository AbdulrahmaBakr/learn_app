import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.tap});

  String? text;
  Color? color;
  VoidCallback? tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          text!,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
