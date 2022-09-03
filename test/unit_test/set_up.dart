import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() => print('Запуск setUp'));

  tearDown(() => print('Запуск tearDown'));

  test("Тест 1", () => print('Запуск Тест 1'));

  test("Тест 2", () => print('Запуск Тест 2'));
}
