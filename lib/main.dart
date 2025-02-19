import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prueba/config/app_colors.dart';

import 'di/di.dart';
import 'config/router.dart';

Future<void> main() async {
  unawaited(initializeDependencies());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: AppColors.scaffoldColor),
    );
  }
}
