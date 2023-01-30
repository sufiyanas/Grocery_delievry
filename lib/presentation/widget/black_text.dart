import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlackText extends StatelessWidget {
  const BlackText(
      {super.key,
      required this.text,
      this.fontcolor = Colors.black,
      this.fontSize = 20});
  final text;
  final Color fontcolor;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: fontcolor, fontSize: fontSize),
    );
  }
}
