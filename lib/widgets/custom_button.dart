import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:search_job/helpers/app_colors.dart';
import 'package:search_job/helpers/app_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Align(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          // width: 363.w,
          // height: 52.h,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: AppColor.white,
              ),
              Gap(5.w),
              Text(
                'Product Designer in Bronx NY',
                style: AppFonts.medium15White,
              ),
              Gap(10.w),
              const SizedBox(
                height: 25,
                child: VerticalDivider(
                  // indent: 10,
                  // endIndent: 10,
                  color: AppColor.white,
                ),
              ),
              Gap(5.w),
              const Icon(
                Icons.filter_list,
                color: AppColor.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
