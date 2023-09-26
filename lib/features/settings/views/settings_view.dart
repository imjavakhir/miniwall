import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_icons.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.white),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: settingList.values.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    thickness: 0,
                    endIndent: 0,
                    indent: 0,
                    color: AppColors.grey,
                    height: 0,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return SettingTile(
                      iconPath: settingList.values.elementAt(index),
                      index: index,
                      title: settingList.keys.elementAt(index),
                      onTap: () {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingTile extends StatelessWidget {
  final int index;
  final String title;
  final VoidCallback onTap;
  final String iconPath;

  const SettingTile(
      {super.key,
      required this.index,
      required this.title,
      required this.onTap,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                index == 0 ? 8.r : 0,
              ),
              topRight: Radius.circular(index == 0 ? 8.r : 0),
              bottomLeft:
                  Radius.circular(index == settingList.length - 1 ? 8.r : 0),
              bottomRight:
                  Radius.circular(index == settingList.length - 1 ? 8.r : 0))),
      color: AppColors.white,
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  index == 0 ? 8.r : 0,
                ),
                topRight: Radius.circular(index == 0 ? 8.r : 0),
                bottomLeft:
                    Radius.circular(index == settingList.length - 1 ? 8.r : 0),
                bottomRight: Radius.circular(
                    index == settingList.length - 1 ? 8.r : 0))),
        onTap: () {},
        leading: SvgPicture.asset(
          iconPath,
          colorFilter: const ColorFilter.mode(
              AppColors.primaryColorBlack, BlendMode.srcIn),
        ),
        title: Text(
          title,
          style: AppTextStyles.labelStyle6,
        ),
        trailing: SvgPicture.asset(
          AppIcons.forward,
          colorFilter: const ColorFilter.mode(
              AppColors.primaryColorBlack, BlendMode.srcIn),
        ),
      ),
    );
  }
}

Map<String, dynamic> settingList = {
  'Update Profile': AppIcons.userEdit,
  'Language': AppIcons.language,
  'Theme': AppIcons.brush,
  'Rate this App': AppIcons.star,
  'Share with friend': AppIcons.share,
};
