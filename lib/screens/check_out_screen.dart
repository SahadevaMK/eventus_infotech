import 'package:eventus_infotech/screens/check_in_history_page.dart';
import 'package:eventus_infotech/widgets/richTexts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:eventus_infotech/screens/check_in_history_page.dart';
import '../widgets/check_in_out_buttons.dart';
import '../widgets/texts.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

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
              CheckInOutButtons(icon: Icon(Icons.alarm,color: Colors.white,size: 50.sp,), text1: 'Check-out', text2: '06:30:00 pm',color: Colors.red.shade700,onTap: ()=>Get.to(CheckInHistoryPage()),),
              SizedBox(
                height: 4.h,
              ),
              SampleTexts(text: '09:30 Hrs', color: Colors.black, fontSize: 40.sp,),
              SizedBox(
                height: 4.h,
              ),
              SampleTexts(text: '05 Apr 2024', color: Colors.black,fontSize: 20.sp,),
              SizedBox(
                height: 4.h,
              ),
              RichTexts(text1: 'Check-in at ', text2: '09:00 am', color1: Colors.black, color2: Colors.green.shade500, fontsize1: 20.sp, fontsize2: 20.sp),
            ],
          ),
        ),
      ),
    );
  }
}
