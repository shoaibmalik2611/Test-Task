import 'package:flutter/material.dart';
import 'package:kostenlos/application/theme/text_themes.dart';

import 'app_colors.dart';

ThemeData get lightTheme => ThemeData.light().copyWith(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(primary: AppColor.primary, brightness: Brightness.light),
    textTheme: textTheme,
    disabledColor: const Color(0xFFDADEE4),
    appBarTheme: AppBarTheme(
      titleTextStyle: textTheme.titleMedium?.copyWith(color: AppColor.green, fontWeight: FontWeight.w400),
      color: AppColor.light,
      backgroundColor: AppColor.light,
      centerTitle: false,
      surfaceTintColor: AppColor.light,
      elevation: 5.0,
      shadowColor: AppColor.lightGrey,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
    ),
    canvasColor: AppColor.light,
    scaffoldBackgroundColor: Colors.white,
    cardColor: AppColor.light,
    splashColor: AppColor.light,
    highlightColor: AppColor.light
    // textTheme: textTheme,
    );
