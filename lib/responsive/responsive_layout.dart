import 'package:flutter/material.dart';

import 'dimensions/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile, tablet, desktop;
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.desktop,
      required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < mobileWidth) {
          return mobile;
        } else if (constraint.maxWidth < tabletWidth) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
