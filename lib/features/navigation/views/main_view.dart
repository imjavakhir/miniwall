import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniwall/features/collections/views/collections_view.dart';
import 'package:miniwall/features/downloads/views/downloads_view.dart';
import 'package:miniwall/features/favourites/views/favourites_view.dart';
import 'package:miniwall/features/home/components/custom_bottom_navigation_bar.dart';
import 'package:miniwall/features/home/views/home_view.dart';
import 'package:miniwall/features/navigation/components/navigation_bar_component.dart';
import 'package:miniwall/features/privacypolicy/views/privacypolicy_view.dart';
import 'package:miniwall/features/report/views/report_view.dart';
import 'package:miniwall/features/search/views/searching_view.dart';
import 'package:miniwall/features/settings/views/settings_view.dart';
import 'package:miniwall/shared/appbar_widget.dart';
import 'package:miniwall/theme/app_colors.dart';
import 'package:miniwall/theme/app_icons.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int selectedNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: true,
        drawer: SafeArea(
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24.r),
                  bottomRight: Radius.circular(24.r)),
              child: NavigationDrawerComponent(
                valueChanged: (value) {
                  selectedNavigation = value;
                  setState(() {});
                  _scaffoldKey.currentState!.closeDrawer();
                },
                selected: selectedNavigation,
              )),
        ),
        appBar: AppBarWidget(
          actions: [
            if (_navigationpages.keys.elementAt(selectedNavigation) ==
                'Downloads')
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: IconButton(
                    splashRadius: 24.r,
                    onPressed: () {},
                    icon: SvgPicture.asset(AppIcons.filter)),
              )
          ],
          title: _navigationpages.keys.elementAt(selectedNavigation),
          leading: IconButton(
              splashRadius: 24.r,
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: AppColors.primaryColorBlack,
              )),
        ),
        body: _navigationpages.values.elementAt(selectedNavigation));
  }
}

class HomeNavigationView extends StatefulWidget {
  const HomeNavigationView({super.key});

  @override
  State<HomeNavigationView> createState() => _HomeNavigationViewState();
}

class _HomeNavigationViewState extends State<HomeNavigationView> {
  int selectedBottomNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedBottomNavigation],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomBottomNavigationBar(
        valueChanged: (value) {
          selectedBottomNavigation = value;
          setState(() {});
        },
        selectedIndex: selectedBottomNavigation,
      ),
    );
  }
}

List<Widget> _pages = [
  const HomeView(),
  const CollectionsView(),
  const SearchingView(),
];

Map<String, dynamic> _navigationpages = {
  'Mainwall': const HomeNavigationView(),
  'Favourites': const FavouritesView(),
  'Downloads': const DownloadsView(),
  'Settings': const SettingView(),
  'Privacy Policy': const PrivacyPolicyView(),
  'Report an issue': const ReportView(),
};
