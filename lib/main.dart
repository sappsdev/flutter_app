// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/config.dart';
import 'routes/router.dart';
import 'stores/stores.dart';

void main() async {
  usePathUrlStrategy();
  await Environment.initEnvironment();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);
    final AppTheme appTheme = ref.watch(themeNotifierStore);
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      routerConfig: appRouter,
      theme: appTheme.getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
