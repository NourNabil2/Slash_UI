import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/Core/Utils/constants.dart';

import 'Core/Utils/Colors.dart';
import 'Core/Utils/ThemeData.dart';
import 'Features/Home_Screen/View/Home_Screen.dart';
import 'Features/Home_Screen/ViewModel/home_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeApp,
      home: BlocProvider(
  create: (context) => HomeCubit()..readjsona(),
      child: HomePage(),
),
    );
  }
}
