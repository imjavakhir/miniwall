import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class OutlinedAppButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback? onTap;
  final double width;
  final double height;
  final double fontsize;
  final double paddingW;
  final bool isSocialHas;
  final String iconPath;
  const OutlinedAppButton({
    Key? key,
    this.iconPath = '',
    required this.buttonName,
    this.fontsize = 14,
    required this.onTap,
    this.isSocialHas = false,
    this.width = double.maxFinite,
    this.height = 44,
    this.paddingW = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: paddingW.w,
      ),
      decoration: BoxDecoration(
          color: AppColors.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 0, color: AppColors.primaryColorBlack)),
      width: width,
      height: height.h,
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        enableFeedback: false,
        highlightColor: AppColors.primaryColorBlack.withOpacity(0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isSocialHas)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SvgPicture.asset(
                  iconPath,
                  height: 20.h,
                  width: 20.h,
                ),
              ),
            Text(
              buttonName,
              style: AppTextStyles.labelStyle5.copyWith(
                  fontFamily: AppTextStyles.helveticaBold,
                  color: AppColors.primaryColorBlack,
                  fontSize: fontsize.sp),
            ),
          ],
        ),
      ),
    );
  }
}
