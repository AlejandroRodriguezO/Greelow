import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer _timer = Timer(Duration.zero, () {});

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 1), () {
      context.goNamed(Routes.home.name);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Loading...',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
