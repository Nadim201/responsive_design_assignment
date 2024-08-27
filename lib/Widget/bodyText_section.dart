import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/Constant.dart';

class BodytextSection extends StatelessWidget {
  const BodytextSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double titleText = width > 768 ? 32 : 24;
    double bodyText = width < 480 ? 14 : 16;

    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment:
            width < 768 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Align(
            alignment: width < 768 ? Alignment.center : Alignment.centerLeft,
            child: Text(
              'Build Stunning Apps',
              style:
                  TextStyle(fontWeight: FontWeight.w900, fontSize: titleText),
            ),
          ),
          Align(
            alignment: width < 768 ? Alignment.center : Alignment.centerLeft,
            child: Text(
              'with Confidence',
              style:
                  TextStyle(fontWeight: FontWeight.w900, fontSize: titleText),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Align(
            alignment: width < 768 ? Alignment.center : Alignment.centerLeft,
            child: Text(
              'Are you ready to dive into the world of mobile app development? Our comprehensive Flutter course is designed to help you master the skills you need to build beautiful, high-performance apps for both iOS and Android.',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: bodyText,
                  wordSpacing: 0.4),
              textAlign: width < 768 ? TextAlign.center : TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
