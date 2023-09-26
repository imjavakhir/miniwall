import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_icons.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class NavigationDrawerComponent extends StatelessWidget {
  final int selected;
  final ValueChanged valueChanged;
  const NavigationDrawerComponent(
      {super.key, required this.selected, required this.valueChanged});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: valueChanged,
      tilePadding: EdgeInsets.symmetric(horizontal: 16.w),
      indicatorShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      selectedIndex: selected,
      indicatorColor: AppColors.primaryColorBlack,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: ListTile(
            leading: Container(
              height: 32.h,
              width: 32.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColorBlackLight),
            ),
            title: Text(
              'Javoxir Abdumalikov',
              style: AppTextStyles.labelStyle6,
            ),
            subtitle: Text(
              'javakhir_6272@mail.ru',
              style: AppTextStyles.labelStyle7,
            ),
          ),
        ),
        NavigationDrawerDestination(
            icon: SvgPicture.asset(
              AppIcons.home,
              colorFilter: const ColorFilter.mode(
                  AppColors.primaryColorBlack, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.homeFilled,
              colorFilter:
                  const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            label: const Text('Home')),
        NavigationDrawerDestination(
            icon: SvgPicture.asset(
              AppIcons.like,
              colorFilter: const ColorFilter.mode(
                  AppColors.primaryColorBlack, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.likeFilled,
              colorFilter:
                  const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            label: const Text(
              'Favourites',
            )),
        NavigationDrawerDestination(
            icon: SvgPicture.asset(
              AppIcons.downloadDoc,
              colorFilter: const ColorFilter.mode(
                  AppColors.primaryColorBlack, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.downloadDocFilled,
              colorFilter:
                  const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            label: const Text(
              'Downloads',
            )),
        NavigationDrawerDestination(
            icon: SvgPicture.asset(
              AppIcons.settings,
              colorFilter: const ColorFilter.mode(
                  AppColors.primaryColorBlack, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.settingsFilled,
              colorFilter:
                  const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            label: const Text(
              'Settings',
            )),
        NavigationDrawerDestination(
            icon: SvgPicture.asset(
              AppIcons.doc,
              colorFilter: const ColorFilter.mode(
                  AppColors.primaryColorBlack, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.docFilled,
              colorFilter:
                  const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            label: const Text(
              'Privacy Pocilcy',
            )),
        NavigationDrawerDestination(
            icon: SvgPicture.asset(
              AppIcons.warning,
              colorFilter: const ColorFilter.mode(
                  AppColors.primaryColorBlack, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.warningFilled,
              colorFilter:
                  const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            label: const Text(
              'Report an issue',
            )),
      ],
    );
  }
}
