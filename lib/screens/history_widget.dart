import 'package:eventus_infotech/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CheckInHistory extends StatelessWidget {
  final String address1;
  final String address2;
  final Text? reminders;

  final Color color;
   const CheckInHistory({Key? key, required this.address1, required this.address2, this.reminders, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomCenter,
      color:color,
      child: Padding(
        padding:  EdgeInsets.all(10.5.sp),
        child: Row(
          children: [
            SampleTexts(text: '09:00 am', color: Colors.black, fontSize: 10.sp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SampleTexts(
                      text: address1,
                      color: Colors.black,
                      fontSize: 8.sp
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SampleTexts(
                          text: address2,
                          color: Colors.black,
                          fontSize:8.sp
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SampleTexts(
                        text: reminders.toString(),
                        color: Colors.blue,
                        fontSize: 5.sp
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
