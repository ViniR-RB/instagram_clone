import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/common/routes/name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  changePage() async {
    final Future<Set<void>> duration = Future.delayed(
        const Duration(seconds: 2),
        () => {Navigator.of(context).pushReplacementNamed(AppRoutes.signin)});
    return duration;
  }

  @override
  Widget build(BuildContext context) {
    changePage();
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
