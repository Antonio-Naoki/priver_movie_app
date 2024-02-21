import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/pages/discover/view/discover_page.dart';
import 'package:priver_movie/pages/home/view/home_page.dart';
import 'package:priver_movie/pages/user/view/user_page.dart';

class BottonPage extends StatefulWidget {
  const BottonPage({super.key});

  @override
  State<BottonPage> createState() => _BottonPageState();
}

class _BottonPageState extends State<BottonPage> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: AppColors.barraNavegacionColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: AppColors.barraNavegacionColor,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      DiscoverPage(),
      UserPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        activeColorPrimary: AppColors.iconSelectNavigation,
        inactiveColorPrimary: AppColors.iconSelectNavigation2,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.play_circle),
        activeColorPrimary: AppColors.iconSelectNavigation,
        inactiveColorPrimary: AppColors.iconSelectNavigation2,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.supervised_user_circle_sharp),
        activeColorPrimary: AppColors.iconSelectNavigation,
        inactiveColorPrimary: AppColors.iconSelectNavigation2,
      ),
    ];
  }
}
