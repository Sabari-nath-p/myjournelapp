import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(height: 60,),
            Text("TradeJournal AI", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold
          ),
                ),
                SizedBox(height: 20,),
                Text("Welcome Back", 
                style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold),),
                Text("Access your intelligent trading dashboard.",
                style: TextStyle(fontSize: 16,),),
                SizedBox(height: 30),
                Text(
              "Email Address",
              style: TextStyle(fontSize: 16),
            ),
             SizedBox(height: 20,),
             Center(
               child: TextField(
                decoration: InputDecoration(
                  hintText: "trader@example.com",
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xff16282C),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                           ),
             ),
              SizedBox(height: 20,),
             Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2BCDEE),
                ),
                child: Center(
                  child: Text(
                    "Send OTP",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
                ]),
        ),
      ),
    );
  }
}