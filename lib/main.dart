import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/constants.dart';

import 'Core/Utils/Colors.dart';
import 'Features/Home_Screen/View/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: ColorApp.kPrimaryColor,
        textTheme: const TextTheme(
            bodySmall: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s14,color: ColorApp.ksecondaryColor),
            bodyMedium: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s16,color: ColorApp.ksecondaryColor),
            labelMedium: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s16, fontWeight: FontWeight.bold,color: ColorApp.ksecondaryColor),
            labelSmall: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s14, fontWeight: FontWeight.bold,color: ColorApp.khintsearchColor),
            headlineMedium: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s20, fontWeight: FontWeight.bold,color: ColorApp.ksecondaryColor),
            headlineLarge: TextStyle(fontFamily: 'Urbanist',fontSize: SizeApp.s22, fontWeight: FontWeight.bold,color: ColorApp.ksecondaryColor),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: ColorApp.kPrimaryColor),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
