import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';
import 'package:search_job/models/job_model.dart';

class JobTitleSection extends StatelessWidget {
  const JobTitleSection({super.key, required this.jobModel});
  final JobModel jobModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      width: double.infinity,
      color: AppColor.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            jobModel.imagePath,
            height: 64,
          ),
          Gap(16.h),
          Text(
            jobModel.title,
            style: AppFonts.medium26Black,
          ),
          Text(
            jobModel.subtitle,
            style: AppFonts.medium12Black,
          ),
          Gap(5.h),
          Text(
            'Posted on 20 July',
            style: AppFonts.medium12Black.copyWith(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
