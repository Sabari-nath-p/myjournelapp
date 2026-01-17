import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myjournel/Screens/Authentication.dart';

void main() {
  runApp(DevicePreview(builder: (ctx) => MyJournelApp(), enabled: true));
}

class MyJournelApp extends StatelessWidget {
  MyJournelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 850),
      builder: (__, context) {
        return GetMaterialApp(
          theme: ThemeData(fontFamily: 'Inter', useMaterial3: true),
          home: AuthenticationScreen(),
        );
      },
    );
  }
}
