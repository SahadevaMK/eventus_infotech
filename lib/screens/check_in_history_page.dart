import 'package:eventus_infotech/screens/history_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/check_in_out_buttons.dart';
import '../widgets/texts.dart';

class CheckInHistoryPage extends StatelessWidget {
  const CheckInHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(3.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Container(
                alignment: Alignment.center,
                child: SampleTexts(
                    text: 'Hi, Arjun',
                    color: Colors.black,
                    fontSize: 30.sp
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SampleTexts(text: 'Reason', color: Colors.black, fontSize: 10.sp),
                    Icon(Icons.event_note)
                  ],
                ),
              ),
              CheckInOutButtons(icon: Icon(Icons.alarm,color: Colors.white,size: 50.sp,), text1: 'Check-out', text2: '06:30:00 pm',color: Colors.red.shade700,),
              SizedBox(
                height: 4.h,
              ),
              SampleTexts(text: '09:30 Hrs', color: Colors.black, fontSize: 40.sp,),
              SizedBox(
                height: 4.h,
              ),
              SampleTexts(text: '05 Apr 2024', color: Colors.black,fontSize: 20.sp,),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.purpleAccent,
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(2.h),
                          child: SampleTexts(text: '09:30 Hrs', color: Colors.black, fontSize: 15.sp,),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(2.h),
                          child: SampleTexts(text: 'Hours', color: Colors.black, fontSize: 10.sp,),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(2.h),
                          child: SampleTexts(text: '05 Apr 2024', color: Colors.black,fontSize: 10.sp,),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   children: [
                  //     CheckInHistory(
                  //       address1: 'kjfaufhaisfhisdhfisadhifis',
                  //       address2: 'skjhfishfhsdufhjhfishdfhkshfjhfdijsdhfksdk',
                  //       //icon: Icon(Icons.ice_skating),
                  //       reminders: Text('fshdfhusdgfdshfh'),
                  //       color: Colors.yellow,
                  //     ),
                  //     CheckInHistory(
                  //       address1: 'kjfaufhaisfhisdhfisadhifisjfjdfjsdhfkjhksdh',
                  //       address2: 'skjhfishfhsdufhjhfishdfhkshf',
                  //       //icon: Icon(Icons.ice_skating),
                  //       reminders: Text('fshdfhusdgfdshfh'),
                  //       color: Colors.orange,
                  //     ),
                  //   ],
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
