import 'package:orders_insights/core/src/app_exports.dart';
import 'package:orders_insights/core/style/app_colors.dart';

enum AppTheme {
  lightAppTheme,
  darkAppTheme,
}

final appThemeData = {
  AppTheme.darkAppTheme: ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    textTheme: TextTheme(
      bodyMedium: const TextStyle().copyWith(color: Colors.white),
      bodyLarge: const TextStyle().copyWith(color: Colors.yellowAccent),
    ),
  ),
  AppTheme.lightAppTheme: ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    splashColor: Colors.transparent,
    textTheme: TextTheme(
      bodyMedium: const TextStyle().copyWith(color: Colors.white),
      bodyLarge: const TextStyle().copyWith(color: Colors.black),
    ),
  ),
};
