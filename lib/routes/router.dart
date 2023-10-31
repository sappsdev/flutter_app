import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../layouts/layouts.dart';
import '../views/views.dart';
import 'router_notifier.dart';

class RoutePath {
  static const String home = '/';
  static const String layout = '/layout';
}

final goRouterProvider = Provider((ref) {
  ref.read(routerStore);
  return GoRouter(initialLocation: RoutePath.home, routes: [
    GoRoute(
      path: RoutePath.home,
      builder: (context, state) => const HomeView(),
    ),
    ShellRoute(
        builder: ((context, state, child) => AppLayout(
              route: state.location,
              child: child,
            )),
        routes: [
          GoRoute(
              path: RoutePath.layout,
              builder: ((context, state) => const HomeView())),
        ])
  ]);
});
