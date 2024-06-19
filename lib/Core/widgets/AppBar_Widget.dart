import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';
import 'package:slash/Core/Utils/responsive.dart';

buildAppBar(context)
{
 return Padding(
   padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ?  SizeApp.s24 : SizeApp.s24*2),
   child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppString.title ,style: Theme.of(context).textTheme.headlineMedium,),
        Row(
          children: [
            IconsApp.location,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SizeApp.s8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nasr City',style: Theme.of(context).textTheme.bodySmall,),
                  Text('Cairo',style: Theme.of(context).textTheme.labelMedium,),
                ],
              ),
            ),
            const Icon(CupertinoIcons.chevron_down,color: ColorApp.ksecondaryColor,)
          ],
        ),
        Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: SizeApp.s12,
                height: SizeApp.s12,
                decoration: BoxDecoration(
                    color: ColorApp.knotification ,
                    borderRadius: BorderRadius.circular(10)),
              ),
              IconsApp.knotification,
            ]
        ),

      ],
    ),
 );
}