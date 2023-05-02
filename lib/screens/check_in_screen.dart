import 'package:eventus_infotech/screens/check_out_screen.dart';
import 'package:eventus_infotech/widgets/richTexts.dart';
import 'package:eventus_infotech/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../widgets/check_in_out_buttons.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key? key}) : super(key: key);

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
              GestureDetector(
                onTap: (){
                  Get.defaultDialog(
                    title: '',
                    backgroundColor: Colors.blue,
                    middleText: 'Travelled from Bangalore, So login late ',
                    middleTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SampleTexts(text: 'Reason', color: Colors.black, fontSize: 10.sp),
                      Icon(Icons.event_note)
                    ],
                  ),
                ),
              ),

          CheckInOutButtons(icon: Icon(Icons.alarm,color: Colors.white,size: 50.sp,), text1: 'Check-in', text2: '09:00:00 am',onTap: ()=>Get.to(CheckOutScreen()), color: Colors.green.shade800,),
              SizedBox(
                height: 4.h,
              ),
              SampleTexts(text: '00:00 Hrs', color: Colors.black, fontSize: 40.sp,),
              SizedBox(
                height: 4.h,
              ),
              SampleTexts(text: '05 Apr 2024', color: Colors.black,fontSize: 20.sp,),
              SizedBox(
                height: 4.h,
              ),
              SampleTexts(text: 'Yet to Check-in',color: Colors.black,fontSize: 25.sp,),

            ],
          ),
        ),
      ),
    );
  }
}
