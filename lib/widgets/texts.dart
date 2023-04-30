import 'package:flutter/material.dart';

class SampleTexts extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
   SampleTexts({Key? key, required this.text, required this.color, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
