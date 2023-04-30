import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RegisterTexts extends StatelessWidget {
  final String title;
  final Color color;
   RegisterTexts({Key? key, required this.title, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 10.sp,
        color: color,
      ),
    );
  }
}
