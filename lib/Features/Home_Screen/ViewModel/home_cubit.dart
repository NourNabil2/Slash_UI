import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List bestSelling = [];
  List newArrival = [];
  List recommended = [];

  Future<void> readjsona() async {
    final String response = await rootBundle.loadString('lib/Features/Model/dummyData.json');
    final data = await json.decode(response);

    bestSelling = data['bestSelling'];
    newArrival = data['newArrival'];
    recommended = data['recommendedForYou'];
  }


}
