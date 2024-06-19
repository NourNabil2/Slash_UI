import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/constants.dart';

buildCategories(context)
{
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kShirt,
              const SizedBox(height: SizeApp.s6,),
              Text(AppString.kfashion, style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kDice,
              const SizedBox(height: SizeApp.s6,),
              Text(AppString.kgame, style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kGlasses,
              const SizedBox(height: SizeApp.s6,),
              Text(AppString.kaccessories, style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kBook,
              const SizedBox(height: SizeApp.s6,),
              Text(AppString.kbooks, style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kShirt,
              const SizedBox(height: SizeApp.s6,),
              Text(AppString.kartifacts, style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
        ),
      ],
    ),
  );
}