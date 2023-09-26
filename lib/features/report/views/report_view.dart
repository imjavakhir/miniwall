import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniwall/shared/filled_app_button.dart';
import 'package:miniwall/shared/textfield_widget.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Text(
                'You have something to report? Great, we love feedback!',
                style:
                    AppTextStyles.labelStyle7.copyWith(color: AppColors.grey),
              ),
            ),
            ScreenUtil().setVerticalSpacing(10),
            TextfieldWidget(
                hintext: 'Email',
                textEditingController: TextEditingController()),
            ScreenUtil().setVerticalSpacing(10),
            TextfieldWidget(
                hintext: 'Message',
                maxLines: 8,
                textEditingController: TextEditingController()),
            ScreenUtil().setVerticalSpacing(20),
            FilledAppButton(buttonName: 'Submit', onTap: () {})
          ],
        ),
      ),
    );
  }
}
