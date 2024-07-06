import 'dart:convert';
import 'package:flutter_application_1/Modules/Models.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  dynamic getWeather({required String cityName}) async {
    String baseUrl = 'http://api.weatherapi.com/v1';
    String apiKey = 'd5d2abf039c440179eb131747231902';
    Uri url = Uri.parse(
      '$baseUrl/forecast.json?key=$apiKey&q=$cityName',
    );
    http.Response response = await http.get(url);

    dynamic data = jsonDecode(response.body);
    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
    // print(data);
  }
}
