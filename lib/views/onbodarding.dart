import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';
import 'package:search_job/helpers/app_images.dart';
import 'package:search_job/views/find_job.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 150,
                  left: 30,
                  child: CircleAvatar(
                    backgroundColor: AppColor.white.withOpacity(.3),
                    radius: 267 / 2,
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    AppImages.onboarding,
                    height: 500.h,
                  ),
                ),
              ],
            ),
            Text(
              'Climb higher with\n JobSeek app',
              style: AppFonts.semiBold30White,
              textAlign: TextAlign.center,
            ),
            const Expanded(child: SizedBox()),
            Align(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FindJob(),
                    ),
                  );
                },
                style: ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(
                    Size(250.w, 50.h),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
                child: Text(
                  'Start browsing',
                  style: AppFonts.medium15White
                      .copyWith(color: AppColor.primaryColor),
                ),
              ),
            ),
            Gap(30.h),
          ],
        ),
      ),
    );
  }
}
