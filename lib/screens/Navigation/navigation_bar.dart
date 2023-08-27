// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:simple_meditation/config/meditation_icons_icons.dart';
import 'package:simple_meditation/config/route_config.dart';

// ignore: camel_case_types
class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

int _selectedIndex = 0;

// ignore: camel_case_types
class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GNav(
                gap: 2,
                padding: EdgeInsets.all(16),
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    if (mounted) {
                      context.goNamed(RouteName().routeNames[index]);
                    }
                    _selectedIndex = index;
                  });
                },
                // backgroundColor: Colors.lightGreenAccent,
                tabBackgroundColor: Colors.black,
                iconSize: 30,
                duration: Duration(milliseconds: 250),
                tabBorderRadius: 15,
                tabs: [
                  GButton(
                    icon: Icons.home_rounded,
                    text: 'Home',
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                  ),
                  GButton(
                    icon: MeditationIcons.meditation,
                    text: 'Meditate',
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                  ),
                  GButton(
                    icon: MeditationIcons.clock,
                    text: 'Timer',
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                  ),
                  // GButton(
                  //   icon: Icons.download_for_offline,
                  //   text: 'Downloads',
                  //   textColor: Colors.white,
                  //   iconColor: Colors.white,
                  //   iconActiveColor: Colors.white,
                  // ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  "${assetsPath}nav_bar.png",
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.6),
                  BlendMode.modulate,
                ),
              ),
              // color: Colors.lightGreenAccent,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.black,
        ));
  }
}
