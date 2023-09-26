import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniwall/shared/textfield_widget.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_icons.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class SearchingView extends StatelessWidget {
  const SearchingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                child: Text(
                  'Search',
                  style: AppTextStyles.labelStyle4
                      .copyWith(fontFamily: AppTextStyles.helveticaBold),
                ),
              ),
              ScreenUtil().setVerticalSpacing(8),
              TextfieldWidget(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: SvgPicture.asset(
                      AppIcons.search,
                      height: 18.h,
                      width: 18.h,
                      colorFilter: const ColorFilter.mode(
                          AppColors.textfieldText, BlendMode.srcIn),
                    ),
                  ),
                  hintext: 'Search',
                  textEditingController: TextEditingController())
            ],
          ),
        ),
      ),
    );
  }
}
