import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Text(
                'Trending',
                style: AppTextStyles.labelStyle4
                    .copyWith(fontFamily: AppTextStyles.helveticaBold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
