import 'package:eventus_infotech/widgets/login_fields.dart';
import 'package:eventus_infotech/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../widgets/buttons.dart';
import '../widgets/register_texts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(

          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: Padding(
              padding: EdgeInsets.all(3.h),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 2.h),
                        alignment: Alignment.center,
                        child: SampleTexts(
                          text: 'Register an User',
                          color: Colors.blue,
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      RegisterTexts(
                        title: 'Full Name',
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      LoginField(
                        enabled: false,
                        circularBorderValue: 0,
                        borderWidthValue: 1,
                        color: Colors.blue,
                        textInputType: TextInputType.name,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RegisterTexts(
                        title: 'Email',
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      LoginField(
                        enabled: false,
                        circularBorderValue: 0,
                        borderWidthValue: 1,
                        color: Colors.blue,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RegisterTexts(
                        title: 'Password',
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      LoginField(
                        enabled: true,
                        circularBorderValue: 0,
                        borderWidthValue: 1,
                        color: Colors.blue,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RegisterTexts(
                        title: 'Mobile Number',
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      LoginField(
                        enabled: false,
                        circularBorderValue: 0,
                        borderWidthValue: 1,
                        color: Colors.blue,
                        textInputType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RegisterTexts(
                        title: 'User Type',
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      LoginField(
                        enabled: false,
                        circularBorderValue: 0,
                        borderWidthValue: 1,
                        color: Colors.blue,
                        textInputType: TextInputType.name,
                        hintTexts: 'Admin/User',
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RegisterTexts(
                        title: 'Status',
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      LoginField(
                        enabled: false,
                        circularBorderValue: 0,
                        borderWidthValue: 1,
                        color: Colors.blue,
                        textInputType: TextInputType.name,
                        hintTexts: 'Active/Inactive',
                      ),
                    ],
                  ),
                ),
                Buttons(
                  title: 'Submit',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
