import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width < 1440 &&
      MediaQuery.of(context).size.width >= 1100;

  static bool isBigDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1440;
}
