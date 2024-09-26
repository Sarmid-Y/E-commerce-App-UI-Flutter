import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class HomePage {
  HomePage(this.$);
  PatrolIntegrationTester $;
  
  final back = #back;

  Future<void> selectCategory(String cat) async {
    await $(cat).tap();
  }

  Future<void> selectBack() async {
    await $(back).tap();
  }

  // Future<void> type() async {
  //   await $(system).enterText('Some Tesxt');
  // }

  Future<void> validateCategories(String categories) async {
    await $(categories).waitUntilVisible();
    expect(find.text(categories), findsOneWidget);
  }

  Future<void> scrollTo(String element) async {
    await $(element).scrollTo().tap();
  }

}