import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'package:shop_app/main.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import '../views/home_page.dart';

void main() {

    patrolTest('Validate Categories are  displayed and selectable', ($) async {await $.pumpWidgetAndSettle(const MyApp());

    await Future.delayed(const Duration(seconds: 2));
    expect($('Women'), findsOneWidget);
    await Future.delayed(const Duration(seconds: 2));
    await HomePage($).selectCategory("Jewellery");
    await Future.delayed(const Duration(seconds: 2));
    await HomePage($).selectCategory("Footwear");
    await Future.delayed(const Duration(seconds: 2));
    await HomePage($).selectCategory("Dresses");
    await Future.delayed(const Duration(seconds: 2));
    await HomePage($).validateCategories("Hand bag");
    await HomePage($).validateCategories("Jewellery");
    await HomePage($).validateCategories("Footwear");
    await HomePage($).validateCategories("Dresses");

  });
  

}