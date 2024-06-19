import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
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
      theme: themeApp(context),
      home: PersistentTabView(
navBarHeight: SizeApp.s72,
       tabs: [
          PersistentTabConfig(
            screen: BlocProvider(
              create: (context) => HomeCubit()..readjsona(),
              child: const Homepage(),
            ),
            item: ItemConfig(
              activeForegroundColor: ColorApp.ksecondaryColor,
              icon: IconsApp.khome,
              title: AppString.khome,
            ),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: ItemConfig(
              activeForegroundColor: ColorApp.ksecondaryColor,
              icon:  IconsApp.kFav,
              title: AppString.kFav,
            ),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: ItemConfig(
              activeForegroundColor: ColorApp.ksecondaryColor,
              icon: IconsApp.kcart,
              title: AppString.kcarts,
            ),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: ItemConfig(
              activeForegroundColor: ColorApp.ksecondaryColor,
              icon: IconsApp.kprofile,
              title: AppString.kprofile,
            ),
          ),

        ],

        navBarBuilder: (navBarConfig) => Style4BottomNavBar(
            navBarConfig: navBarConfig)
      ),
    );
  }
}
