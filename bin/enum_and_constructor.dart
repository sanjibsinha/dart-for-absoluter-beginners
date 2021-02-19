import 'package:dart_for_absolute_beginners/enum_and_constructor.dart' as en;

void main(List<String> args) {
  print(en.CLOUDY);
  en.SwitchingBetweenEnumeratedValues.fetchWeather(en.Weather.sunny);
  en.SwitchingBetweenEnumeratedValues.fetchWeather(en.Weather.cloudy);
  en.SwitchingBetweenEnumeratedValues.fetchWeather(en.Weather.rainy);
}
