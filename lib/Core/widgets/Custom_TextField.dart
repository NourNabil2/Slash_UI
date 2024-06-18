import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/constants.dart';
import '../Utils/Colors.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({this.hintText, this.onChanged,});
  Function(String)? onChanged;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: SizeApp.s24),
      child: Container(
        height: SizeApp.s45,
        decoration: BoxDecoration(color: ColorApp.ksearchColor,borderRadius: BorderRadius.circular(SizeApp.s8)),
        child: TextField(
          cursorColor: ColorApp.ksecondaryColor,
          style: Theme.of(context).textTheme.bodySmall,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.labelSmall,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none
            ),
          ),
        ),
      ),
    );
  }
}