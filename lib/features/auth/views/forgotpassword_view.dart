import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:miniwall/router/app_go_route.dart';
import 'package:miniwall/shared/appbar_widget.dart';
import 'package:miniwall/shared/filled_app_button.dart';
import 'package:miniwall/shared/textfield_widget.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBarWidget(
          title: '',
          isHasBack: true,
          onTapBack: () {
            context.pop();
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'Forgot Password?',
                  style: AppTextStyles.labelStyle4
                      .copyWith(fontFamily: AppTextStyles.helveticaBold),
                ),
              ),
              ScreenUtil().setVerticalSpacing(4),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'Don\'t worry! Please enter the email adress linked with your account.',
                  style: AppTextStyles.labelStyle6,
                ),
              ),
              ScreenUtil().setVerticalSpacing(10),
              TextfieldWidget(
                  hintext: 'Email',
                  textEditingController: TextEditingController()),
              ScreenUtil().setVerticalSpacing(20),
              FilledAppButton(
                  buttonName: 'Send code',
                  onTap: () {
                    context.goNamed(RouteNames.setPassword);
                  }),
              ScreenUtil().setVerticalSpacing(60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Remember password?',
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
