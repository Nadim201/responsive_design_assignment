import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/Widget/CostomAppBar.dart';

import '../Widget/bodyText_section.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAppBar(isMobile: false, isTablet: true, isDesktop: false),
              Expanded(
                child: BodytextSection(
                  isMobile: false,
                  isTablet: true,
                  isDesktop: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//