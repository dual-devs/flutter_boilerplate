import 'package:flutter/material.dart';

import 'colors.dart';
import 'colors_schemes.dart';

abstract class AppTheme {
  static ThemeData defaultTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: defaultColorScheme,
  );
}
