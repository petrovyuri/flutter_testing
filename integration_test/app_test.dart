import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/app_screen.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("AppScreen", () {
    testWidgets("Проверка стартового экрана", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AppScreen(),
      ));
      final textFinder = find.text("Обновите данные");
      expect(textFinder, findsOneWidget);
      await Future.delayed(const Duration(seconds: 5));
    });

    testWidgets("Тест нажатия на FAB", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AppScreen(),
      ));
      final fabFinder = find.byType(FloatingActionButton);
      expect(fabFinder, findsOneWidget);
      await tester.tap(fabFinder);
      await tester.pumpAndSettle();
      final currentTempTextFinder = find.text("36 °C");
      expect(currentTempTextFinder, findsOneWidget);
      await Future.delayed(const Duration(seconds: 5));
    });
  });
}
