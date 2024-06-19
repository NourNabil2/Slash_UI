import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';

import 'Custom_TextField.dart';
import 'Icon_Filter_Search_Widget.dart';

build_Search_Widget(context)
{
 return Row(
    children: [
      Expanded(
        child: CustomFormTextField(hintText: AppString.hintsearch,onChanged: (p0) {
        },),
      ),
      const SizedBox(width: SizeApp.s8,),
      Slide_Filter,
    ],
  );
}