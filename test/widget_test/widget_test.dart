import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/app_screen.dart';

void main() {
  group("AppScreen", () {
    testWidgets("Проверка начального экрана приложения",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: AppScreen()));
      final textFinder = find.text("Обновите данные");
      final fabFinder = find.byType(FloatingActionButton);
      expect(textFinder, findsOneWidget);
      expect(fabFinder, findsOneWidget);
    });

    testWidgets("Проверка начального экрана приложения",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: AppScreen()));
      final fabFinder = find.byType(FloatingActionButton);
      expect(fabFinder, findsOneWidget);
      await tester.tap(fabFinder);
      await tester.pumpAndSettle();
      final tempTextFinder = find.text("Температура");
      final currentTempTextFinder = find.text("36 °C");
      expect(tempTextFinder, findsOneWidget);
      expect(currentTempTextFinder, findsOneWidget);
    });
  });
}
