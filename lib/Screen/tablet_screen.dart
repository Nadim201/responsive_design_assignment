import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/Constant.dart';
import 'package:responsive_design_assignment/Widget/bodyText_section.dart';

import '../Widget/drawer_section.dart';
import '../Widget/elevatedbutton _section.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // Align text to the start
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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0, top: 10.0, bottom: 10.0),
              child: Column(
                children: [
                  Text('Episodes'),
                  SizedBox(width: 20),
                  Text('About'),
                ],
              ),
            ),
          ],
        ),
        drawer: const Drawer(
          child: DrawerSection(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: height * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 4,
                  child: BodytextSection(),
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: SizedBox(
                    width: 200,
                    child: MyElevatedButton(
                      title: 'Join Course',
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
