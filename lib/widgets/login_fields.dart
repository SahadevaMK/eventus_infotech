import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginField extends StatelessWidget {
  final Icon icon;
  final bool enabled;
  const LoginField({Key? key, required this.icon, required this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 90.w,

      ),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff3192cc),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: icon,
        ),
        obscureText: enabled,
      ),
    );
  }
}
