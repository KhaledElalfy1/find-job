import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/views/onbodarding.dart';

void main() {
  runApp(DevicePreview(builder:(context) =>  const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 823),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: AppColor.background,
          ),
          // fontFamily: GoogleFonts.poppinsTextTheme(),
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: AppColor.background,
        ),
        home: const OnBoarding(),
      ),
    );
  }
}
