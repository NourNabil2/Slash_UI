import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';

final Widget Slide_Filter = Ink(
  child: Container(
    height: SizeApp.s45,
    padding: const EdgeInsets.all(SizeApp.s10),
    decoration: BoxDecoration(
        color: ColorApp.ksearchColor,
        borderRadius: BorderRadius.circular(SizeApp.s8)),
    child: const Icon(
      CupertinoIcons.slider_horizontal_3,
      color: ColorApp.kSlideIconColor,
    ),
  ),
);
