import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniwall/theme/app_colors.dart';

abstract class Decorations {
  static OutlineInputBorder focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(
        color: AppColors.primaryColorBlack,
      ));

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(color: AppColors.borderColor));

  static OutlineInputBorder errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.red));
  static OutlineInputBorder disabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(color: Colors.transparent));
}
