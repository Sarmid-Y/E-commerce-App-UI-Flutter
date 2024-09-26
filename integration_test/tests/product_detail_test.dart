import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'package:shop_app/main.dart';
import '../views/detail_page.dart';

void main() {

    patrolTest('Validate Belt Bag Categories displayed and selectable', ($) async {await $.pumpWidgetAndSettle(const MyApp());

    await Future.delayed(const Duration(seconds: 2));
    expect($('Women'), findsOneWidget);

    await DetailPage($).selectProduct("Old Fashion");
    await Future.delayed(const Duration(seconds: 2));
    await DetailPage($).validateProduct("Old Fashion");
    await DetailPage($).validateBuyNow();
    await DetailPage($).addMore();
    await DetailPage($).addMore();
    await Future.delayed(const Duration(seconds: 2));
    await DetailPage($).selectBack();
    await Future.delayed(const Duration(seconds: 2));

  });

      patrolTest('Validate Old Fasion Categories displayed and selectable', ($) async {await $.pumpWidgetAndSettle(const MyApp());

      expect($('Women'), findsOneWidget);

      await DetailPage($).selectProduct("Belt Bag");
      await Future.delayed(const Duration(seconds: 2));
      await DetailPage($).validateProduct("Belt Bag");
      await DetailPage($).validateBuyNow();
      await DetailPage($).addMore();
      await DetailPage($).addMore();
      await DetailPage($).addMore();
      await Future.delayed(const Duration(seconds: 2));
      await DetailPage($).selectBack();
      await Future.delayed(const Duration(seconds: 2));
  });

}


