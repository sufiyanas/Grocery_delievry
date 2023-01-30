import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_delivary/const/const.dart';
import 'package:grocery_delivary/presentation/widget/black_text.dart';

class SlideToORder extends StatelessWidget {
  const SlideToORder({super.key, required this.mwidth});

  final double mwidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: mwidth - 10,
      height: mwidth * 0.2 - 10,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          kWidth5,
          Container(
            margin: EdgeInsets.only(left: 3, bottom: 5, top: 5, right: 30),
            width: mwidth * 0.2 - 20,
            height: mwidth * 0.2 - 15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.keyboard_double_arrow_right,
              color: Colors.blue,
              size: 30,
            ),
          ),
          const Center(
            child: BlackText(
              text: "Order Compleated",
              fontcolor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
