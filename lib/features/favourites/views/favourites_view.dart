import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_icons.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3 / 4),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/test.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16.r)),
            child: SvgPicture.asset(
              AppIcons.likeFilled,
              height: 24.h,
              width: 24.h,
              colorFilter: ColorFilter.mode(
                  AppColors.red.withOpacity(0.7), BlendMode.srcIn),
            ),
          );
        },
      ),
    );
  }
}
