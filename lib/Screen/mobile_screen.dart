import 'package:flutter/material.dart';

import '../Widget/CostomAppBar.dart';
import '../Widget/bodyText_section.dart';
import '../Widget/drawer_section.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: DrawerSection(),
        ),
        body: Column(
          children: [
            CustomAppBar(
              isMobile: true,
              isTablet: false,
              isDesktop: false,
            ),
            Expanded(
              child: BodytextSection(
                isMobile: true,
                isTablet: false,
                isDesktop: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
