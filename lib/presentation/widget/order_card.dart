import 'package:flutter/material.dart';
import 'package:grocery_delivary/const/const.dart';
import 'package:grocery_delivary/presentation/widget/black_text.dart';
import 'package:grocery_delivary/presentation/widget/grey_text.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
    required this.mwidth,
  }) : super(key: key);

  final double mwidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "asset/images/city-1.jpg",
                width: 0.23 * mwidth,
                height: 0.23 * mwidth,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BlackText(text: "#ID1274637308"),
                    SizedBox(
                      width: 0.16 * mwidth,
                    ),
                    const BlackText(text: "₹1,503")
                  ],
                ),
                kheight10,
                SizedBox(
                  width: mwidth * 0.70,
                  child: const GreyText(
                      text:
                          "Vattakarai,Chennavannanvilai,\nNagercoil,Thamil Nadu 629002,India",
                      fontsize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
