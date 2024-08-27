import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/pages/resposive_builder.dart';

import '../Screen/desktop_screen.dart';
import '../Screen/mobile_screen.dart';
import '../Screen/tablet_screen.dart';

class ResponsivePageDesign extends StatelessWidget {
  const ResponsivePageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobileScreen: MobileScreen(),
      tabletScreen: TabletScreen(),
      desktopScreen: DesktopScreen(),
    );
  }
}
