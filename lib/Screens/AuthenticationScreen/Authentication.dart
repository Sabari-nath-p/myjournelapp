import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myjournel/Screens/AuthenticationScreen/Service/AuthenticationController.dart';
import 'package:myjournel/Screens/CreateAccountScreen/CreateAccountScreen.dart';
import 'package:pinput/pinput.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationScreen({super.key});
  Authenticationcontroller ctrl = Get.put(Authenticationcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<Authenticationcontroller>(
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Text(
                  "TradeJournal AI",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Access your intelligent trading dashboard.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  alignment: Alignment.centerLeft,
                  child: Text("Email Address", style: TextStyle(fontSize: 16)),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "trader@example.com",
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Color(0xffF3F4F6),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),

                if (ctrl.hasEmailSent) ...[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(horizontal: 24.w),

                    child: Text("Enter OTP", style: TextStyle(fontSize: 16)),
                  ),
                  Pinput(length: 6),
                  SizedBox(height: 10.h),
                ],
                InkWell(
                  onTap: () {
                    if (!ctrl.hasEmailSent) {
                      ctrl.hasEmailSent = true;
                      ctrl.update();
                    } else {
                      Get.to(
                        () => CreataAccountScreen(),
                        transition: Transition.cupertino,
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,

                    margin: EdgeInsets.symmetric(horizontal: 24.w),

                    height: 48.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff17A3EB),
                    ),
                    child: Center(
                      child: Text(
                        (ctrl.hasEmailSent) ? "Verify OTP" : "Send OTP",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
