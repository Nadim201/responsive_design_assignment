import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
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
    } else if (screenSize > 481 && screenSize < 1080) {
      return tabletScreen;
    }
    return desktopScreen;
  }
}
