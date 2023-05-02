import 'package:eventus_infotech/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CheckInOutButtons extends StatelessWidget {
  final Icon icon;
  final String text1;
  final String text2;
  final VoidCallback? onTap;
  final Color color;
  const CheckInOutButtons({Key? key, required this.icon, required this.text1, required this.text2, this.onTap, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                icon,
                Column(
                  children: [
                    SampleTexts(
                      text: text1, color: Colors.white, fontSize: 30.sp,),
                    SizedBox(
                      height: 2.h,
                    ),
                    SampleTexts(text:text2, color: Colors.white, fontSize: 20.sp),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
