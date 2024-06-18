import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';
import 'package:slash/Core/widgets/Custom_TextField.dart';
import 'package:slash/Core/widgets/Icon_Slide_Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: ColorApp.kPrimaryColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: SizeApp.s24,vertical: SizeApp.s72),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
          child: Column(
            children: [
              Row(
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
              Row(
                children: [
                  Expanded(
                    child: CustomFormTextField(hintText: 'Search here..',onChanged: (p0) {
                    },),
                  ),
                  const SizedBox(width: SizeApp.s8,),
                  Slide_Filter,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
