// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/screens/announcement/announcements_screen.dart';
import 'package:xetienchuyen/src/app/presentation/screens/driver/driver_screen.dart';
import 'package:xetienchuyen/src/app/presentation/screens/home/home_screen.dart';
import 'package:xetienchuyen/src/app/presentation/screens/myTrips/my_trips_screen.dart';
import 'package:xetienchuyen/src/app/presentation/screens/profile/profile_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';

class BottomNavBar extends StatefulWidget {
  int selectedTab = 0;

  BottomNavBar({
    Key? key,
    required this.selectedTab,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      widget.selectedTab = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kWhiteColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        selectedFontSize: 12,
        selectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        unselectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: "Tìm chuyến",
            icon: SvgPicture.asset(
              Assets.svg.searchIconSVG,
              color: widget.selectedTab == 0 ? kPrimaryColor : kQuarterColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Tài xế",
            icon: SvgPicture.asset(
              Assets.svg.addIconSVG,
              color: widget.selectedTab == 1 ? kPrimaryColor : kQuarterColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chuyến của tôi",
            icon: SvgPicture.asset(
              Assets.svg.mapIconSVG,
              color: widget.selectedTab == 2 ? kPrimaryColor : kQuarterColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Thông báo",
            icon: SvgPicture.asset(
              Assets.svg.notificationIconSVG,
              color: widget.selectedTab == 3 ? kPrimaryColor : kQuarterColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Tài khoản",
            icon: SvgPicture.asset(
              Assets.svg.profileIconSVG,
              color: widget.selectedTab == 4 ? kPrimaryColor : kQuarterColor,
              height: 25,
            ),
          ),
        ],
        currentIndex: widget.selectedTab,
        onTap: navigationTapped,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          DriverScreen(),
          MyTripsScreen(),
          AnnouncementScreen(),
          ProfileScreen()
        ],
      ),
    );
  }
}
