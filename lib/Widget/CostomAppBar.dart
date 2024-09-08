import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/Constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.isMobile,
      required this.isTablet,
      required this.isDesktop});

  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: isMobile
            ? const EdgeInsets.symmetric(horizontal:16,vertical: 10)
            : const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isMobile)
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            Text(
              'PixelHub\nFlutter.',
              style: TextStyle(
                  fontSize: isMobile ? 16 : 20, fontWeight: FontWeight.bold),
            ),
            if (!isMobile)
              Row(
                children: [
                  Text(
                    'Episode',
                    style: TextStyle(
                        fontSize: isMobile ? 16 : 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                        fontSize: isMobile ? 16 : 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
//