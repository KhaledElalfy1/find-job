import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';
import 'package:search_job/models/job_model.dart';
import 'package:search_job/widgets/job_descrebtion.dart';
import 'package:search_job/widgets/job_salary_section.dart';
import 'package:search_job/widgets/job_title_section.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key, required this.jobModel});
  final JobModel jobModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline))
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              JobTitleSection(jobModel: jobModel),
              Gap(10.h),
              const JobSalarySection(),
              Gap(10.h),
              const JobDiscretion(
                title: 'Job Discretion',
                description:
                    'Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye?\nWe believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We\'re looking for a like-minded',
              ),
              Gap(10.h),
              const JobDiscretion(
                title: 'Roles AND RESPONSIBILITIES',
                description:
                    '- Someone who has ample work experience with synthesizing primary research, developing insight\n-driven product strategy, and extending that strategy into artefacts in a creative, systematic and logical fashion-Adapt and meticulous with creating user ',
              ),
              Gap(20.h),
            ],
          ),
          Align(
            alignment: const Alignment(0, .95),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size(250.w, 52.h),
                ),
                shape: MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(
                      25.r,
                    ),
                  ),
                ),
                backgroundColor:
                    const MaterialStatePropertyAll(AppColor.primaryColor),
              ),
              onPressed: () {},
              child: Text(
                'Apply Now',
                style: AppFonts.medium15White.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
