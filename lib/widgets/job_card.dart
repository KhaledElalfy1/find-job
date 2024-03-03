import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';
import 'package:search_job/models/job_model.dart';
import 'package:search_job/views/job_details.dart';
import 'package:search_job/widgets/job_kind_container.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key, required this.jobModel});
  final JobModel jobModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDetails(jobModel: jobModel),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),
        // width: 363.w,
        // height: 113.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  jobModel.imagePath,
                  height: 40,
                ),
                Gap(8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobModel.title,
                      style: AppFonts.semiBold16Black,
                    ),
                    Text(
                      jobModel.subtitle,
                      style: AppFonts.medium12Black,
                    ),
                  ],
                )
              ],
            ),
            Gap(16.h),
            Row(
              children: [
                const JobKindContainer(text: 'Full Time'),
                Gap(5.w),
                const JobKindContainer(text: 'Remote'),
                const Spacer(),
                const Text('\$64k - \$80k/yearly')
              ],
            )
          ],
        ),
      ),
    );
  }
}
