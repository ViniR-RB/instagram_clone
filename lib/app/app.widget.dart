import 'package:flutter/material.dart';
import 'package:instagram_clone/common/styles/colors.dart';

import '../common/routes/index.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: AppColors.mobileBackgroundColor),
      // theme: themeLight,
      // darkTheme: themeDark,
      initialRoute: AppRoutes.initial,
      routes: AppPages.routes,
    );
  }
}
