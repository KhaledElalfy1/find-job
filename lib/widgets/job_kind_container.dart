import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';

class JobKindContainer extends StatelessWidget {
  const JobKindContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 67.w,
      height: 21.h,
      decoration: BoxDecoration(
        color: AppColor.background,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Text(
        text,
        style: AppFonts.medium12Black,
      ),
    );
  }
}
