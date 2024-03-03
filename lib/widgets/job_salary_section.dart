import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';

class JobSalarySection extends StatelessWidget {
  const JobSalarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.w),
      width: double.infinity,
      color: AppColor.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColumnDetails(
            title1: 'Apply Before',
            subtitle1: '30 July, 2021',
            title2: 'Salary Range',
            subtitle2: '\$100k - \$120k/yearly',
          ),
          ColumnDetails(
            title1: 'Job Nature',
            subtitle1: 'Contractual',
            title2: 'Job Location',
            subtitle2: 'Work from anywhere',
          ),
        ],
      ),
    );
  }
}

class ColumnDetails extends StatelessWidget {
  const ColumnDetails({
    super.key,
    required this.title1,
    required this.subtitle1,
    required this.title2,
    required this.subtitle2,
  });
  final String title1, subtitle1, title2, subtitle2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: AppFonts.bold11Black,
        ),
        Gap(5.h),
        Text(
          subtitle1,
          style: AppFonts.regular14Black,
        ),
        Gap(24.h),
        Text(
          title2,
          style: AppFonts.bold11Black,
        ),
        Gap(5.h),
        Text(
          subtitle2,
          style: AppFonts.regular14Black,
        ),
      ],
    );
  }
}
