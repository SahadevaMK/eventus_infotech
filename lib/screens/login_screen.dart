import 'package:eventus_infotech/screens/check_in_screen.dart';
import 'package:eventus_infotech/screens/register_screen.dart';
import 'package:eventus_infotech/widgets/login_fields.dart';
import 'package:eventus_infotech/widgets/richTexts.dart';
import 'package:eventus_infotech/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(3.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.h,vertical: 4.h),
                child: Image.asset('images/eventusinfotech.png',
                   fit: BoxFit.cover,
                ),
              ), //image
              SizedBox(
                height: 1.h,
              ),
              RichTexts(
                text1: 'WELCOME TO',
                color1: Color(0XFFbdc4cf),
                text2: ' EVENTUS HR',
                color2: Color(0XFF94a1b2),
                fontsize1: 10.sp,
                fontsize2: 15.sp,
              ), //welcome
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 0.h),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Color(0xff0f2d52),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), //login
              SizedBox(
                height: 4.h,
              ),
              LoginField(icon: Icon(Icons.email_rounded,
              color: Color(0xff3192cc),
              ),
               circularBorderValue: 10,
                enabled: false,
                borderWidthValue: 0,
                color: Colors.transparent,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 4.h,
              ),
              LoginField(icon: Icon(CupertinoIcons.eye_solid,
                color: Color(0xff3192cc),
              ),
              enabled: true,
                circularBorderValue: 10,
                borderWidthValue: 0,
                color: Colors.transparent,
              ),
              SizedBox(
                height: 4.h,
              ),
              Buttons(
                title: 'Login',
                onTap: ()=> Get.to(const CheckInScreen()),
              ),//loginbutton
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: RichTexts(
                  text1: 'Forgot Password?',
                  color1: Colors.grey.shade500,
                  fontsize1: 9.sp,
                  text2: ' REQUEST ADMIN',
                  color2: Colors.blue,
                  fontsize2: 10.sp,
                ),
              ),//forgot thing
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ()=>Get.to(()=>RegisterScreen()),
                    child: SampleTexts(
                      text: 'Register',
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),
                  SampleTexts(
                    text: 'Reports',
                    color: Colors.black,
                    fontSize: 20.sp,
                  ),
                ],
              ) //register and reports
            ],
          ),
        ),
      ),
    );
  }
}
