import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginField extends StatelessWidget {
   Icon?  icon;
   String? hintTexts;
   final bool enabled;
  final Color color;
   TextInputType? textInputType;
  final double circularBorderValue;
  final double borderWidthValue;
   LoginField({Key? key, this.icon ,this.hintTexts,  required this.enabled,required this.circularBorderValue, required this.borderWidthValue, required this.color,  this.textInputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 90.w,
      ),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: hintTexts,
          hintStyle: TextStyle(
            color: Colors.blue
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: borderWidthValue,
              color: color,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff3192cc),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(circularBorderValue),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(circularBorderValue),
          ),
          suffixIcon: icon,
        ),
        obscureText: enabled,
        keyboardType: textInputType,
      ),
    );
  }
}
