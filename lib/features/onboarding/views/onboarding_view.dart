import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:miniwall/router/app_go_route.dart';
import 'package:miniwall/shared/filled_app_button.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_images.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: listPages.length,
            itemBuilder: (context, index) => listPages[index],
            onPageChanged: (value) {
              selectedIndex = value;
              setState(() {});
            },
          ),
          Positioned(
              bottom: 160.h,
              left: 0,
              right: 0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 0; i < listPages.length; i++)
                      AnimatedContainer(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        duration: const Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: AppColors.primaryColorBlack),
                        height: 4.h,
                        width: selectedIndex == i ? 24.w : 8.w,
                      )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FilledAppButton(
          buttonName: 'Get Started',
          onTap: () {
            context.goNamed(RouteNames.signIn);
          }),
    );
  }
}

final List<Widget> listPages = [
  const OnboardingViewFirst(),
  const OnboardingViewSecond(),
  const OnboardingViewThird()
];

class OnboardingViewFirst extends StatelessWidget {
  const OnboardingViewFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                AppImages.onboarding1,
                height: 250.h,
                width: 250.h,
              ),
            )),
            ScreenUtil().setVerticalSpacing(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'Miniwall is the first wallpaper app, you\'ll need!',
                textAlign: TextAlign.center,
                style: AppTextStyles.labelStyle3,
              ),
            ),
            ScreenUtil().setVerticalSpacing(4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'Miniwall helps to you find easly your stylish and brand new wallpaper.',
                textAlign: TextAlign.center,
                style: AppTextStyles.labelStyle6,
              ),
            ),
            ScreenUtil().setVerticalSpacing(80),
          ],
        ),
      ),
    );
  }
}

class OnboardingViewSecond extends StatelessWidget {
  const OnboardingViewSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                AppImages.onboarding2,
                height: 250.h,
                width: 250.h,
              ),
            )),
            ScreenUtil().setVerticalSpacing(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'Choose from various collections',
                textAlign: TextAlign.center,
                style: AppTextStyles.labelStyle3,
              ),
            ),
            ScreenUtil().setVerticalSpacing(4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'With new Wallpapers added every week, you\'ll be sure to find the perfect wallpaper for you.',
                textAlign: TextAlign.center,
                style: AppTextStyles.labelStyle6,
              ),
            ),
            ScreenUtil().setVerticalSpacing(80),
          ],
        ),
      ),
    );
  }
}

class OnboardingViewThird extends StatelessWidget {
  const OnboardingViewThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                AppImages.onboarding3,
                height: 250.h,
                width: 250.h,
              ),
            )),
            ScreenUtil().setVerticalSpacing(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'You won\'t miss any new wallpaper',
                textAlign: TextAlign.center,
                style: AppTextStyles.labelStyle3,
              ),
            ),
            ScreenUtil().setVerticalSpacing(4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'You\'ll always find what you\'re looking for and something new every time.',
                textAlign: TextAlign.center,
                style: AppTextStyles.labelStyle6,
              ),
            ),
            ScreenUtil().setVerticalSpacing(80),
          ],
        ),
      ),
    );
  }
}
