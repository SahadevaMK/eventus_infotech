import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
class RichTexts extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color1;
  final Color color2;
  final double fontsize1;
  final double fontsize2;
   RichTexts({Key? key, required this.text1, required this.text2, required this.color1, required this.color2, required this.fontsize1, required this.fontsize2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right:0.h),
      child: RichText(
        text: TextSpan(
          text: text1,
          style: TextStyle(
              color: color1,
              fontSize: fontsize1,
          ),
          children: [
            TextSpan(
              text: text2,
              style: TextStyle(
                color: color2,
                  fontWeight: FontWeight.bold,
                  fontSize: fontsize2
              ),
            ),
          ],
        ),
      ),
    );
  }
}
