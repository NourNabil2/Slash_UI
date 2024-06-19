import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash/Core/Utils/Colors.dart';
import 'package:slash/Core/Utils/constants.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  // fetch local json data
  List bestSelling = [];
  List newArrival = [];
  List recommended = [];

  Future<void> readjsona() async {
    final String response = await rootBundle
        .loadString('lib/Features/Home_Screen/Model/dummyData.json');
    final data = await json.decode(response);

    bestSelling = data['bestSelling'];
    newArrival = data['newArrival'];
    recommended = data['recommendedForYou'];
  }

// carousel_slider
  int currentPage = 0;
  List<Widget> ListBanner = [
    Image.asset(
      'assets/Hot Deal 1.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/Hot Deal 1.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ),
  ];
  void changePage(index) {
    currentPage = index;
    emit(changePageState());
  }

  BuildCarsoulIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < ListBanner.length; i++)
          Container(
            margin: const EdgeInsets.only(top: 14, left: 3, right: 3),
            height: 7,
            width: i == currentPage ? 14 : 7,
            decoration: BoxDecoration(
                color: i == currentPage
                    ? ColorApp.ksecondaryColor
                    : ColorApp.ksearchColor,
                borderRadius: BorderRadius.circular(SizeApp.s8)),
          )
      ],
    );
  }
}
