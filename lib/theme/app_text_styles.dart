import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniwall/theme/app_colors.dart';

abstract class AppTextStyles {
  static const String helveticaLight = 'HelveticaLight';
  static const String helveticaReg = 'HelveticaReg';
  static const String helveticaBold = 'HelveticaBold';

  static TextStyle labelStyle1 = TextStyle(
      fontSize: 24.sp,
      color: AppColors.primaryColorBlack,
      fontWeight: FontWeight.w700,
      fontFamily: helveticaBold);
  static TextStyle labelStyle2 = TextStyle(
      fontSize: 22.sp,
      color: AppColors.primaryColorBlack,
      fontWeight: FontWeight.w600,
      fontFamily: helveticaBold);
  static TextStyle labelStyle3 = TextStyle(
      fontSize: 20.sp,
      color: AppColors.primaryColorBlack,
      fontWeight: FontWeight.w500,
      fontFamily: helveticaBold);
  static TextStyle labelStyle4 = TextStyle(
      fontSize: 18.sp,
      color: AppColors.primaryColorBlack,
      fontWeight: FontWeight.w500,
      fontFamily: helveticaReg);
  static TextStyle labelStyle5 = TextStyle(
      fontSize: 16.sp,
      color: AppColors.primaryColorBlack,
      fontWeight: FontWeight.w500,
      fontFamily: helveticaReg);
  static TextStyle labelStyle6 = TextStyle(
      fontSize: 14.sp,
      color: AppColors.primaryColorBlack,
      fontWeight: FontWeight.w400,
      fontFamily: helveticaReg);
  static TextStyle labelStyle7 = TextStyle(
      fontSize: 12.sp,
      color: AppColors.primaryColorBlack,
      fontWeight: FontWeight.w400,
      fontFamily: helveticaLight);
}
