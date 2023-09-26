import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:miniwall/router/app_go_route.dart';
import 'package:miniwall/shared/appbar_widget.dart';
import 'package:miniwall/shared/filled_app_button.dart';
import 'package:miniwall/shared/outlined_app_button.dart';
import 'package:miniwall/shared/textfield_widget.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_icons.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: const AppBarWidget(
          title: '',
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'Getting Started',
                  style: AppTextStyles.labelStyle4
                      .copyWith(fontFamily: AppTextStyles.helveticaBold),
                ),
              ),
              ScreenUtil().setVerticalSpacing(4),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'Create an account to continue!',
                  style: AppTextStyles.labelStyle6,
                ),
              ),
              ScreenUtil().setVerticalSpacing(10),
              TextfieldWidget(
                  hintext: 'Email',
                  textEditingController: TextEditingController()),
              ScreenUtil().setVerticalSpacing(10),
              TextfieldWidget(
                  hintext: 'Password',
                  textEditingController: TextEditingController()),
              ScreenUtil().setVerticalSpacing(10),
              TextfieldWidget(
                  hintext: 'Confirm your password',
                  textEditingController: TextEditingController()),
              ScreenUtil().setVerticalSpacing(20),
              FilledAppButton(buttonName: 'Register', onTap: () {}),
              ScreenUtil().setVerticalSpacing(60),
              Center(
                child: Text(
                  'Or Continue with Social Network',
                  style:
                      AppTextStyles.labelStyle7.copyWith(color: AppColors.grey),
                ),
              ),
              ScreenUtil().setVerticalSpacing(20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedAppButton(
                        paddingW: 0,
                        iconPath: AppIcons.facebook,
                        isSocialHas: true,
                        buttonName: 'Facebook',
                        onTap: () {},
                      ),
                    ),
                    ScreenUtil().setHorizontalSpacing(20),
                    Expanded(
                      child: OutlinedAppButton(
                        paddingW: 0,
                        isSocialHas: true,
                        buttonName: 'Google',
                        onTap: () {},
                        iconPath: AppIcons.google,
                      ),
                    ),
                  ],
                ),
              ),
              ScreenUtil().setVerticalSpacing(60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: AppTextStyles.labelStyle7
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  ScreenUtil().setHorizontalSpacing(4),
                  TextButton(
                    onPressed: () {
                      context.goNamed(RouteNames.signIn);
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                        splashFactory: NoSplash.splashFactory),
                    child: Text(
                      'Sign In',
                      style: AppTextStyles.labelStyle7.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.purple),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
