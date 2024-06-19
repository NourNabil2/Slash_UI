import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/Core/Utils/constants.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Features/Home_Screen/ViewModel/home_cubit.dart';

BuildListView({
  context,
  required List product_list
})
{
  return  SizedBox(
    height:SizeApp.s170,
    child: ListView.separated(
      padding: const EdgeInsets.only(left: SizeApp.s24),
      separatorBuilder: (context, index) => const SizedBox(width: 8,),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: product_list.length,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                  decoration: BoxDecoration(   borderRadius: BorderRadius.circular(SizeApp.s8)),
                  child: Image.asset(product_list[index]['image'],width: SizeApp.s124, height:  SizeApp.s116,fit: BoxFit.fill,)
              ),
              Container(
                margin: EdgeInsets.all(SizeApp.s6),
                decoration: const BoxDecoration(shape: BoxShape.circle,color: ColorApp.kFaV),
                child: IconsApp.kFavIcon,
              ),
            ],
          ),
          const SizedBox(height: SizeApp.s6,),
          Text(product_list[index]['name'],style: Theme.of(context).textTheme.bodyMedium,),
          SizedBox(
            width: SizeApp.s124,
            child: Row(
              children: [
                Text('${product_list[index]['price']}',style: Theme.of(context).textTheme.labelMedium,),
                const Spacer(),
                Container(
                    decoration: const BoxDecoration(color: ColorApp.ksecondaryColor,borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Image.asset(product_list[index]['simage'],)),
                const SizedBox(width: SizeApp.s8,),
                Container(
                    decoration: const BoxDecoration(color: ColorApp.ksecondaryColor,borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Icon(Icons.add,color: ColorApp.kPrimaryColor,size: SizeApp.s22,)),
              ],
            ),
          )
        ],
      ),


    ),
  );
}

BuildListView_Web({
  context,
  required List product_list
})
{
  return  SizedBox(
    height:SizeApp.s170 * 3,
    child: GridView.builder(
     // padding: const EdgeInsets.symmetric(horizontal: SizeWeb.s48),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      crossAxisSpacing: 10,
      ),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: product_list.length,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                  decoration: BoxDecoration(   borderRadius: BorderRadius.circular(SizeWeb.s8)),
                  child: Image.asset(product_list[index]['image'],width: SizeWeb.s170, height:  SizeWeb.s170,fit: BoxFit.fill,)
              ),
              Container(
                margin: EdgeInsets.all(SizeWeb.s6),
                decoration: const BoxDecoration(shape: BoxShape.circle,color: ColorApp.kFaV),
                child: IconsApp.kFavIcon_Web ,
              ),
            ],
          ),
          const SizedBox(height: SizeApp.s6,),
          Text(product_list[index]['name'],style: Theme.of(context).textTheme.bodyMedium,),
          SizedBox(
            width: SizeWeb.s170,

            child: Row(
              children: [
                Text('${product_list[index]['price']}',style: Theme.of(context).textTheme.labelMedium,),
                const Spacer(),
                Container(
                    decoration: const BoxDecoration(color: ColorApp.ksecondaryColor,borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Image.asset(product_list[index]['simage'],)),
                const SizedBox(width: SizeApp.s8,),
                Container(
                    decoration: const BoxDecoration(color: ColorApp.ksecondaryColor,borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Icon(Icons.add,color: ColorApp.kPrimaryColor,size: SizeWeb.s22,)),
              ],
            ),
          )
        ],
      ),


    ),
  );
}