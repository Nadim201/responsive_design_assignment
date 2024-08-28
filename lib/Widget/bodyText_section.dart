import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/Constant.dart';

class BodytextSection extends StatelessWidget {
  const BodytextSection(
      {super.key,
      required this.isMobile,
      required this.isTablet,
      required this.isDesktop});

  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isMobile
          ? const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            )
          : const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: !isDesktop
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: bodyTextSection(),
                ),
                elevatedButton(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 4,
                  child: bodyTextSection(),
                ),
                const Spacer(),
                elevatedButton(),
              ],
            ),
    );
  }

  Column bodyTextSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text(
          textAlign: isDesktop ? TextAlign.start : TextAlign.center,
          'Build Stunning Apps\nwith Confidence',
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: isMobile ? 24 : 60),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          textAlign: isDesktop ? TextAlign.start : TextAlign.center,
          'Are you ready to dive into the world of mobile app development? Our comprehensive Flutter course is designed to help you master the skills you need to build beautiful, high-performance apps for both iOS and Android.',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: isMobile ? 14 : 24,
              wordSpacing: 0.4),
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }

  SizedBox elevatedButton() {
    return SizedBox(
      width: isMobile ? double.infinity : 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: bottomColor,
            foregroundColor: whiteColor),
        onPressed: () {},
        child: const Text('Join Course'),
      ),
    );
  }
}
