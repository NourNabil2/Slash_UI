import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';

// ignore: must_be_immutable
class Customtextfieldustomformtext extends StatelessWidget {
  Customtextfieldustomformtext({super.key,
    this.hintText,
    this.onChanged,
  });
  Function(String)? onChanged;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: SizeApp.s24),
      child: Container(
        height: SizeApp.s45,
        decoration: BoxDecoration(
            color: ColorApp.ksearchColor,
            borderRadius: BorderRadius.circular(SizeApp.s8)),
        child: TextField(
          cursorColor: ColorApp.ksecondaryColor,
          style: Theme.of(context).textTheme.bodySmall,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(SizeApp.s12),
              child: IconsApp.ksearch,
            ),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.labelSmall,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
