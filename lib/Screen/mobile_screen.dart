import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/Constant.dart';
import 'package:responsive_design_assignment/Widget/bodyText_section.dart';

import '../Widget/drawer_section.dart';
import '../Widget/elevatedbutton _section.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Pixel',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              letterSpacing: 1,
                              color: bottomColor),
                        ),
                        TextSpan(
                          text: 'Flutter',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              letterSpacing: 1,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Studio>',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        letterSpacing: 1,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: const Drawer(
          child: DrawerSection(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: height * 0.15, // Adjusted vertical padding
          ),
          child: Column(
            children: [
              const BodytextSection(),
              SizedBox(
                height: height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Row(
                  children: [
                    Expanded(
                      child: MyElevatedButton(
                        title: 'Join Course',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
