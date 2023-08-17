

import 'networking.dart';
import 'location.dart';
const apikey= '3e3b314eec204e6b9cdfc41af8a9b50c';


class WeatherModel {
  Future<dynamic> getLocationWeather() async {




    NetworkHelper networkHelper = NetworkHelper('https://api.weatherbit.io/v2.0/current?lat=40.7128&lon=74.0060&key=$apikey');
    var weatherData = await networkHelper.getData();
    print("hi");
    return weatherData;
  }



}
