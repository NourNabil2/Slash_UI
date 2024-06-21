import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';
import 'package:slash/Core/Utils/responsive.dart';
import 'package:slash/Features/Home_Screen/View/widgets/AppBar_Widget.dart';
import 'package:slash/Features/Home_Screen/View/widgets/Categories_Widget.dart';
import 'package:slash/Features/Home_Screen/View/widgets/Custom_List_Widget.dart';
import 'package:slash/Features/Home_Screen/View/widgets/Search_Widget.dart';
import 'package:slash/Features/Home_Screen/View/widgets/Title_App_Widget.dart';
import 'package:slash/Features/Home_Screen/ViewModel/home_cubit.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.kPrimaryColor,
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          HomeCubit cubit = HomeCubit.get(context);
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: SizeApp.s72),
            child: Column(
              children: [
                // App Bar for application
                buildappBar(context),
                // search bar
                build_Search_Widget(context),
                // Carsoul slider
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Responsive.isMobile(context)
                          ? SizeApp.s24
                          : SizeWeb.s48),
                  child: CarouselSlider(
                      items: cubit.ListBanner,
                      options: CarouselOptions(
                        height: Responsive.isMobile(context)
                            ? SizeApp.s132
                            : SizeApp.s272,
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        viewportFraction: 1.0,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 6),
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          cubit.changePage(index);
                        },
                      )),
                ),
                cubit.BuildCarsoulIndicator(),
                // Categories
                BuildTitleApp(context, AppString.categ),
                buildCategories(context),
                // Best Saller
                BuildTitleApp(context, AppString.best_S),
                Responsive(
                  mobile: BuildListView(
                      context: context, product_list: cubit.bestSelling),
                  desktop: BuildListView_Web(
                      context: context, product_list: cubit.bestSelling),
                ),
                // New Arrival
                BuildTitleApp(context, AppString.new_A),
                Responsive(
                  mobile: BuildListView(
                      context: context, product_list: cubit.newArrival),
                  desktop: BuildListView_Web(
                      context: context, product_list: cubit.newArrival),
                ),
                // Recommended for you
                BuildTitleApp(context, AppString.recommended),
                Responsive(
                  mobile: BuildListView(
                      context: context, product_list: cubit.recommended),
                  desktop: BuildListView_Web(
                      context: context, product_list: cubit.recommended),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
