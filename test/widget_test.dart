import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutterminggu11/main.dart';
import 'package:flutterminggu11/services/pref_service.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await PrefService.init();
    await tester.pumpWidget(MyApp(prefs: prefs));
    expect(find.byType(MyApp), findsOneWidget);
  });
}
