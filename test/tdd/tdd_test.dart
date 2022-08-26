import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Разработка через тестирование TDD", () {
    final result = sum(5, 6);
    expect(result, 11);
  });
}

int sum(int a, int b) {
  return a + b;
}
