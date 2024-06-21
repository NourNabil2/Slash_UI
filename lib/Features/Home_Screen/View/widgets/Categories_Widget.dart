import 'package:slash/Core/Utils/constants.dart';
import 'package:flutter/material.dart';

buildCategories(context) {
  return SingleChildScrollView(
    padding: const EdgeInsets.only(left: SizeApp.s24),
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kShirt,
              const SizedBox(
                height: SizeApp.s6,
              ),
              Text(
                AppString.kfashion,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kDice,
              const SizedBox(
                height: SizeApp.s6,
              ),
              Text(
                AppString.kgame,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kGlasses,
              const SizedBox(
                height: SizeApp.s6,
              ),
              Text(
                AppString.kaccessories,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kBook,
              const SizedBox(
                height: SizeApp.s6,
              ),
              Text(
                AppString.kbooks,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: SizeApp.s8),
          child: Column(
            children: [
              IconsApp.kShirt,
              const SizedBox(
                height: SizeApp.s6,
              ),
              Text(
                AppString.kartifacts,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
