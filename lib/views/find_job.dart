import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_images.dart';
import 'package:search_job/helpers/job_data.dart';
import 'package:search_job/widgets/custom_button.dart';
import 'package:search_job/widgets/job_card.dart';

class FindJob extends StatelessWidget {
  const FindJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppImages.person,
            height: 40.h,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: AppColor.textColor,
              size: 35,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: JobsData.jobs.length,
            itemBuilder: (context, index) {
              return JobCard(jobModel: JobsData.jobs[index]);
            },
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * .07,
            // right: 5,
            bottom: 16.0, // Adjust this value as needed
            child: const CustomButton(),
          ),
        ],
      ),
    );
  }
}
