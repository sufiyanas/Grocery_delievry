import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  const GreyText({super.key, required this.text, this.fontsize = 20});
  final text;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey.shade600, fontSize: fontsize),
      // textAlign: TextAlign,
    );
  }
}
