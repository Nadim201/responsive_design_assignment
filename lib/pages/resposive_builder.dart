import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage(
      {super.key,
      required this.mobileScreen,
      required this.tabletScreen,
      required this.desktopScreen});

  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    if (screenSize < 480) {
      return mobileScreen;
    } else if (screenSize > 500 && screenSize < 768) {
      return tabletScreen;
    }
    return desktopScreen;
  }
}
