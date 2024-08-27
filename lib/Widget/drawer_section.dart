import 'package:flutter/material.dart';

import '../Constant.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigoAccent),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SKILL UP NOW',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: whiteColor),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Visit here',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: whiteColor2,
                          fontSize: 14),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: Icon(
                    size: 20,
                    Icons.play_arrow,
                    color: whiteColor2,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.video_library),
            title: Text('Episodes'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Abouts'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
