import 'package:flutter/material.dart';
import 'package:kostenlos/application/theme/app_colors.dart';

TextTheme get textTheme => const TextTheme(
      displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
      displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
      displaySmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
      titleSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
      bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
      bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
      labelLarge: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
      labelMedium: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
    ).apply(displayColor: AppColor.dark, bodyColor: AppColor.dark);
