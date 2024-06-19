import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';
import 'package:slash/Core/Utils/responsive.dart';

BuildSeeAll(context)
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(AppString.seeAll,style: Theme.of(context).textTheme.bodySmall,),
      const SizedBox(width: 10,),
      Container(
        height: SizeApp.s20,
        width: SizeApp.s20,
        decoration: BoxDecoration(
            color: ColorApp.kseeall,
            borderRadius: BorderRadius.circular(SizeApp.s4)),
        child: const Icon(CupertinoIcons.right_chevron,color: ColorApp.kSlideIconColor,size:SizeApp.s20,),
      ),
    ],
  );
}

BuildTitleApp(context,String title)
{
 return Padding(
   padding: Responsive.isMobile(context) ? const EdgeInsets.only(top: SizeApp.s24,bottom: SizeApp.s16, right: SizeApp.s24 , left: SizeApp.s24 ) : EdgeInsets.only(top: SizeApp.s24 ,bottom: SizeApp.s16, right: SizeApp.s24 *2 , left: SizeApp.s24 *2) ,
   child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineLarge,),
        BuildSeeAll(context),
      ],
    ),
 );
}