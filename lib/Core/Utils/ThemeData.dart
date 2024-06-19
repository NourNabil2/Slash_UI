import 'package:flutter/material.dart';

import 'Colors.dart';
import 'constants.dart';

ThemeData themeApp = ThemeData(
  scaffoldBackgroundColor: ColorApp.kPrimaryColor,
primaryColor: ColorApp.kPrimaryColor,
textTheme: const TextTheme(
bodySmall: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s14,color: ColorApp.ksecondaryColor),
bodyMedium: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s16,color: ColorApp.ksecondaryColor,overflow: TextOverflow.ellipsis),
labelMedium: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s16, fontWeight: FontWeight.bold,color: ColorApp.ksecondaryColor),
labelSmall: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s14, fontWeight: FontWeight.bold,color: ColorApp.khintsearchColor),
headlineMedium: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s20, fontWeight: FontWeight.w700,color: ColorApp.ksecondaryColor),
headlineLarge: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s22, fontWeight: FontWeight.w600,color: ColorApp.ksecondaryColor),
),
colorScheme: ColorScheme.fromSeed(seedColor: ColorApp.kPrimaryColor),
useMaterial3: true,
);