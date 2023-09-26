import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniwall/router/app_go_route.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_text_styles.dart';

class Miniwall extends ConsumerWidget {
  const Miniwall({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp.router(
            theme: ThemeData(
                navigationDrawerTheme: NavigationDrawerThemeData(
                    labelTextStyle: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return AppTextStyles.labelStyle7.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.w600);
                  }
                  return AppTextStyles.labelStyle7
                      .copyWith(fontWeight: FontWeight.w600);
                })),
                splashFactory: NoSplash.splashFactory,
                scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor),
            builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!),
            routeInformationParser: goRouter.routeInformationParser,
            routeInformationProvider: goRouter.routeInformationProvider,
            routerDelegate: goRouter.routerDelegate,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
