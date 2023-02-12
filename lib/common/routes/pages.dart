import 'package:flutter/material.dart';
import 'package:instagram_clone/app/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/app/responsive/responsive_layout_screen.dart';

import '../../app/modules/auth/sigin/signin_page.dart';
import '../../app/modules/auth/signup/signup_page.dart';
import '../../app/modules/splash/splash_page.dart';
import '../../app/responsive/web_screen_layout.dart';
import 'name.dart';

class AppPages {
  AppPages._();

  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.initial: (context) => const SplashPage(),
    AppRoutes.signin: (context) => const SignInPage(),
    AppRoutes.signup: (context) => const SignUpPage(),
    AppRoutes.responsivelayout: (context) => const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout())
  };
}
