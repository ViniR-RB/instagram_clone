import 'package:flutter/material.dart';
import 'package:instagram_clone/common/styles/colors.dart';

final themeDark = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.mobileBackgroundColor,
    background: AppColors.mobileBackgroundColor,
    error: Colors.red,
    onBackground: AppColors.mobileBackgroundColor,
    onError: Colors.red,
    onPrimary: AppColors.mobileBackgroundColor,
    onSecondary: AppColors.mobileBackgroundColor,
    onSurface: AppColors.mobileBackgroundColor,
    secondary: AppColors.mobileBackgroundColor,
    surface: AppColors.mobileBackgroundColor,
  ),
  useMaterial3: true,
);

final themeLight = ThemeData(
  useMaterial3: true,
  primaryColor: AppColors.primaryColor,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryColor,
    background: AppColors.mobileBackgroundColor,
    error: Colors.red,
    onBackground: AppColors.mobileBackgroundColor,
    onError: Colors.red,
    onPrimary: AppColors.mobileBackgroundColor,
    onSecondary: AppColors.mobileBackgroundColor,
    onSurface: AppColors.mobileBackgroundColor,
    secondary: AppColors.mobileBackgroundColor,
    surface: AppColors.mobileBackgroundColor,
  ),
);
