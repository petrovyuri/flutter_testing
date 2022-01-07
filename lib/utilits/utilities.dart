abstract class Utilities {
  static String convertHumanTemp(double? temperature) {
    try {
      final value = int.parse(temperature.toString().split(".").first);
      return "$value °C";
    } catch (error) {
      return "Ошибка данных";
    }
  }
}
