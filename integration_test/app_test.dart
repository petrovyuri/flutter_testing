import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/app_screen.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Проверка начального экрана приложения",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AppScreen()));
    final textFinder = find.text("Обновите данные");
    final fabFinder = find.byType(FloatingActionButton);
    expect(textFinder, findsOneWidget);
    expect(fabFinder, findsOneWidget);
    await Future.delayed(const Duration(seconds: 5));
    await tester.tap(fabFinder);
    await tester.pumpAndSettle();
    final mainTextFinder = find.text("Иннополис");
    final tempTextFinder = find.text("Температура");
    final currentTempTextFinder = find.text("36 °C");
    expect(mainTextFinder, findsOneWidget);
    expect(tempTextFinder, findsOneWidget);
    expect(currentTempTextFinder, findsOneWidget);
    await Future.delayed(const Duration(seconds: 5));
  });
}
