import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_job/helpers/app_colors.dart';

abstract class AppFonts {
  static TextStyle semiBold30White = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
  );
  static TextStyle semiBold16Black = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColor.textColor,
  );
  static TextStyle medium12Black = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColor.textColor,
  );
  static TextStyle bold11Black = GoogleFonts.poppins(
    fontSize: 11.5,
    fontWeight: FontWeight.w700,
    color: AppColor.textColor,
  );
  static TextStyle regular14Black = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor.textColor,
  );
  static TextStyle medium26Black = GoogleFonts.poppins(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppColor.textColor,
  );
  static TextStyle medium15White = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColor.white,
  );
}
