import 'package:flutter/material.dart';

import '../Widget/bodyText_section.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: BodytextSection(
            isMobile: true,
            isTablet: false,
            isDesktop: false,
          ),
        )
      ],
    );
  }
}
