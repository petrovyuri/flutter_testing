import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/utilits/utilities.dart';

void main() {
  test('Проверка функции на  стандартные значения', () {
    final result = Utilities.convertHumanTemp(27.3);
    expect(result, equals("27 °C"));
  });
}
