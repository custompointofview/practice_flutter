import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = 'b6907d289e10d714a6e88b30761fae22';
const openWeatherMapURL = 'https://samples.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getWeatherByLocation(String cityName) async {
    NetworkHelper netHelp =
        NetworkHelper('$openWeatherMapURL?q=$cityName&appid=$apiKey');

    var weatherData = await netHelp.getData();
    return weatherData;
  }

  Future<dynamic> getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper netHelp =
        NetworkHelper('$openWeatherMapURL?q=London&appid=$apiKey');

    var weatherData = await netHelp.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
