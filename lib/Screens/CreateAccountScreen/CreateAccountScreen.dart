import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreataAccountScreen extends StatelessWidget {
  const CreataAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(children: [
          Expanded(child: IconButton(onPressed: (){}, icon: Container(height: 48.h,width: 223.w,child: Center(child: Text("skip")),))),
          Expanded(child: IconButton(onPressed: (){}, icon: Container(height: 48.h,width: 223.w,
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
           color: Color(0xff17A3EB)),
          child: Center(child: Text("Next Step")),)),)
        ]),
      ),
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 40.h,),
        Text(
             "Create  your Ledger",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
       SizedBox(height: 20.h),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 5.w),
         child: Text(
               "Start by naming your account and selecting your broker. This helps categorize your analytics.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
       ),
       SizedBox(height: 30.h),
      Container(
         padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.centerLeft,
              child: Text("Account Name", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                ),SizedBox(height: 8),
                Container(
                   padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "e.g., Main Scalping Acct",
                      hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
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
      SizedBox(height: 30.h),
      Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.centerLeft,
              child: Text("Broker  or Prop Firm", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                ),SizedBox(height: 8),
                Container(
                   padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "e.g., Main Scalping Acct",
                      hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
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
      SizedBox(height: 30.h),
      Container(
         padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.centerLeft,
              child: Text("Market Segment", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                ),SizedBox(height: 8),
                Container(
                   padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "e.g., Main Scalping Acct",
                      hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
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
      SizedBox(height: 30.h),
      Container(
         padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.centerLeft,
              child: Text("Trading currency type", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "USD (&)",
                      hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
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
       SizedBox(height: 30.h),
      Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              alignment: Alignment.centerLeft,
              child: Text("Popular Choices", style: TextStyle(fontSize: 14)),
                ),
              SizedBox(height: 8.h),
        Padding(
          padding:EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              Container(
                height: 61.h,
                width: 20.w,
                decoration: BoxDecoration(
                color: Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text("MT5")),
              ),
              SizedBox(width: 8.w,),
               Container(
                height: 61.h,
                width: 20.w,
                decoration: BoxDecoration(
                color: Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text("MT5")),
              ),
              SizedBox(width: 8.w,),
               Container(
                height: 61.h,
                width: 25.w,
                decoration: BoxDecoration(
                color: Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text("FTmo")),
              )
            ],
          ),
        ) 
    ],)),


    );
  }
}
