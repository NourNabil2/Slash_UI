import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/constants.dart';
import 'package:slash/Core/Utils/responsive.dart';
import 'Custom_TextField.dart';
import 'Icon_Filter_Search_Widget.dart';

build_Search_Widget(context)
{
 return Padding(
   padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ?  SizeApp.s24 : SizeApp.s24*2),
   child: Row(
      children: [
        Expanded(
          child: Customtextfieldustomformtext(hintText: AppString.hintsearch,onChanged: (p0) {
          },),
        ),
        const SizedBox(width: SizeApp.s8,),
        Slide_Filter,
      ],
    ),
 );
}