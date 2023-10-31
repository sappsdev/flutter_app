import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  final String route;
  const AppLayout({required this.child, required this.route, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [const Text('Layout'), Text(route), Container(child: child)],
    ));
  }
}
