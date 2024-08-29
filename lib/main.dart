import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

import 'pages/responsive_page_design.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent.shade200),
          useMaterial3: true,
          textTheme:
              GoogleFonts.ibarraRealNovaTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: Colors.black,
          ),
          canvasColor: Colors.white),
      home: const ResponsivePageDesign(),
    );
  }
}
//