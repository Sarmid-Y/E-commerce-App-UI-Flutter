import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class DetailPage {
  DetailPage(this.$);
  PatrolIntegrationTester $;

  final close = #dynamicSheetClose;
  final system = 'System';
  final back = #back;
  final add = #add;
  final buy = #buy;

  Future<void> selectProduct(String product) async {
    await $(product).tap();
  }

  Future<void> addMore() async {
    await $(add).tap();
  }

  Future<void> selectBack() async {
    await $(back).tap();
  }

  Future<void> validateProduct(String prod) async {
    await $(prod).waitUntilVisible();
    expect(find.text(prod), findsOneWidget);
  }

    Future<void> validateBuyNow() async {
    await $(buy).waitUntilVisible();
    //expect(find.text("BUY NOW"), findsOneWidget);
  }

    Future<void> scroll() async {
    await $(system).scrollTo().tap();
  }

}