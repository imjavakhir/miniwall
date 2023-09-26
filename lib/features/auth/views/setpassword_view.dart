import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:miniwall/shared/appbar_widget.dart';
import 'package:miniwall/shared/filled_app_button.dart';
import 'package:miniwall/shared/textfield_widget.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class SetPasswordView extends StatelessWidget {
  const SetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Set New Password?',
                style: AppTextStyles.labelStyle4
                    .copyWith(fontFamily: AppTextStyles.helveticaBold),
              ),
            ),
            ScreenUtil().setVerticalSpacing(4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'Your new password must be unique from those previously used.',
                style: AppTextStyles.labelStyle6,
              ),
            ),
            ScreenUtil().setVerticalSpacing(10),
            TextfieldWidget(
                hintext: 'New password',
                textEditingController: TextEditingController()),
            ScreenUtil().setVerticalSpacing(10),
            TextfieldWidget(
                hintext: 'Confirm new password',
                textEditingController: TextEditingController()),
            ScreenUtil().setVerticalSpacing(20),
            FilledAppButton(buttonName: 'Reset password', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
