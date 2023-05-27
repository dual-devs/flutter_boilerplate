import 'package:flutter/material.dart';

import 'colors.dart';

ColorScheme defaultColorScheme = const ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.primaryColor,
  onPrimary: AppColors.whiteColor,
  secondary: AppColors.backgroundColor,
  background: AppColors.backgroundColor,
  error: Colors.red,
  onBackground: AppColors.backgroundColor,
  onError: Colors.red,
  onSecondary: AppColors.backgroundColor,
  onSurface: AppColors.whiteColor,
  surface: AppColors.primaryColor,
).copyWith(secondary: AppColors.whiteColor);
