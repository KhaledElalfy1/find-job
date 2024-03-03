import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';

class JobDiscretion extends StatelessWidget {
  const JobDiscretion({super.key, required this.title, required this.description});
  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      width: double.infinity,
      color: AppColor.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFonts.bold11Black,
          ),
          Text(
            description,
            style: AppFonts.regular14Black,
          ),
        ],
      ),
    );
  }
}
