import 'package:flutter/material.dart';

import '../Widget/bodyText_section.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: BodytextSection(
            isMobile: false,
            isTablet: false,
            isDesktop: true,
          ),
        )
      ],
    );
  }
}
