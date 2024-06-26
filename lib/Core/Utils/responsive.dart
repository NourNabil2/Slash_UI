import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    // If our width is more than 1100 then we consider it a desktop
      return LayoutBuilder(
        builder: (context, constraints) {
          if( constraints.maxWidth >= 1100 )
            return desktop;
          // Or less then that we called it mobile
          else
            return mobile;
        }
         );
    }
}

