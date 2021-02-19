enum Weather {
  sunny,
  cloudy,
  rainy,
}

const SUNNY = 'Sunny';
const CLOUDY = 'Cloudy';
const RAINY = 'Rainy';

//Using constants to display weather information
void mainSwitchConstants() {
  const SUNNY = 'Sunny';
  const CLOUDY = 'Cloudy';
  const RAINY = 'Rainy';

  //#1. Switch doesn't complain for const, but raise error for enums
  var choice = SUNNY;
  switch (choice) {
    case SUNNY:
      print('Sunny weather today');
      break;
    case CLOUDY:
      print('Cloudi weather today');
      break;
    case RAINY:
      print('Rainy weather today');
      break;
  }
}

//Using Enums to display weather information
class SwitchingBetweenEnumeratedValues {
  static void fetchWeather(Weather weatherToday) {
    var weather = weatherToday;

    //Following code will complain about
    // not including other types of weather
    //OR use default
    switch (weather) {
      case Weather.sunny:
        print('Sunny weather today!');
        break;
      case Weather.cloudy:
        print('Cloudy today!');
        break;
      case Weather.rainy:
        print('Rainy and gloomy weather.');
        break;
    }
  }
}
