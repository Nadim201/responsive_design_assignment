import 'package:flutter/material.dart';

import '../Widget/bodyText_section.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: BodytextSection(
            isMobile: false,
            isTablet: true,
            isDesktop: false,
          ),
        )
      ],
    );
  }
}
