import 'package:flutter/material.dart';

import 'responsive/scaffolds/desktop_body.dart';
import 'responsive/scaffolds/mobile_body.dart';
import 'responsive/responsive_layout.dart';
import 'responsive/scaffolds/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ResponsiveLayout(
        mobile: MobileBody(),
        tablet: TabletBody(),
        desktop: DesktopBody(),
      ),
    );
  }
}
