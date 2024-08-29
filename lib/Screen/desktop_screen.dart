import 'package:flutter/material.dart';

import '../Widget/CostomAppBar.dart';
import '../Widget/bodyText_section.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            isMobile: false,
            isTablet: false,
            isDesktop: true,
          ),
          Expanded(
            child: BodytextSection(
              isMobile: false,
              isTablet: false,
              isDesktop: true,
            ),
          )
        ],
      ),
    );
  }
}
//