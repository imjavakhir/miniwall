import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged valueChanged;
  const CustomBottomNavigationBar(
      {super.key, required this.selectedIndex, required this.valueChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: AppColors.primaryColorBlack),
      height: 56.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            AppIcons.bottomNavigationItems.length,
            (index) => MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r)),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(horizontal: -4),
                padding: EdgeInsets.zero,
                onPressed: () => valueChanged(index),
                child: SvgPicture.asset(
                  AppIcons.bottomNavigationItems.values.elementAt(
                      index)[selectedIndex == index ? 'active' : 'inactive'],
                  colorFilter:
                      const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                  height: 24.h,
                  width: 24.h,
                )),
          )),
    );
  }
}
