import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/utilits/utilities.dart';

void main() {
  test('Проверка функции на  стандартные значения', () {

    final result = Utilities.convertHumanTemp(27.3);
    expect(result, equals("27 °C"));


    final result2 = Utilities.convertHumanTemp(null);
    expect(result2, equals("Ошибка данных"));


    final result3 = Utilities.convertHumanTemp(13.1);
    expect(result3, equals("13 °C"));
  });
}
