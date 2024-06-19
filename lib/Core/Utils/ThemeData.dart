import 'package:flutter/material.dart';

import 'Colors.dart';
import 'constants.dart';
import 'responsive.dart';

themeApp(context)
{
  return ThemeData(
    scaffoldBackgroundColor: ColorApp.kPrimaryColor,
    primaryColor: ColorApp.kPrimaryColor,
    textTheme:  TextTheme(
      bodySmall: const TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s14,color: ColorApp.ksecondaryColor),
      bodyMedium: const TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s16,color: ColorApp.ksecondaryColor,overflow: TextOverflow.ellipsis),
      labelMedium: const TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s16, fontWeight: FontWeight.bold,color: ColorApp.ksecondaryColor),
      labelSmall: const TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s14, fontWeight: FontWeight.bold,color: ColorApp.khintsearchColor),
      headlineMedium: TextStyle(fontFamily: 'Urbanist',fontSize: Responsive.isMobile(context) ? SizeApp.s20 : SizeWeb.s30 , fontWeight: FontWeight.w700,color: ColorApp.ksecondaryColor),
      headlineLarge: TextStyle(fontFamily: 'Urbanist',fontSize: Responsive.isMobile(context) ? SizeApp.s22 : SizeWeb.s30, fontWeight: FontWeight.w600,color: ColorApp.ksecondaryColor),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: ColorApp.kPrimaryColor),
    useMaterial3: true,
  );
}