import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherModel {
  final String date;
  final String cityName;
  final String icon;
  final String weatherState;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;

  WeatherModel({
    required this.avgTemp,
    required this.cityName,
    required this.date,
    required this.icon,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherState,
  });

  // ----------------------------
  factory WeatherModel.fromJson(dynamic dataApi) {
    var jsonData = dataApi['forecast']['forecastday'][0]['day'];

    return WeatherModel(
      avgTemp: jsonData['avgtemp_c'],
      cityName: dataApi['location']['name'],
      date: dataApi['forecast']['forecastday'][0]['date'],
      icon: jsonData['condition']['icon'],
      maxTemp: jsonData['maxtemp_c'],
      minTemp: jsonData['mintemp_c'],
      weatherState: jsonData['condition']['text'],
    );
  }
  @override
  String toString() {
    return 'data of today $date     avgTemp = $avgTemp ';
  }

  dynamic ImageIcon() {
    if (weatherState == 'Clear' ||
        weatherState == 'Light Cloud' ||
        weatherState == 'Sunny') {
      return "images/clear.png";
    } else if (weatherState == 'Sleet' ||
        weatherState == 'Snow' ||
        weatherState == 'Hail') {
      return "images/snow.png";
    } else if (weatherState == 'Heavy Cloud') {
      return 'images/cloud.png';
    } else if (weatherState == 'Patchy rain possible' ||
        weatherState == 'Heavy Rain' ||
        weatherState == 'Showers	') {
      return 'images/rainy.png';
    } else if (weatherState == 'Thundery outbreaks possible' ||
        weatherState == 'Moderate or heavy snow with thunder' ||
        weatherState == 'Patchy light snow with thunder' ||
        weatherState == 'Moderate or heavy rain with thunder' ||
        weatherState == 'Patchy light rain with thunder') {
      return 'images/thunderstorm.png';
    } else {
      return 'images/thunderstorm.png';
    }
  }

  // -----------colors--------------

  MaterialColor backGrongThems() {
    if (weatherState == 'Clear' ||
        weatherState == 'Light Cloud' ||
        weatherState == 'Sunny') {
      return Colors.blue;
    } else if (weatherState == 'Sleet' ||
        weatherState == 'Snow' ||
        weatherState == 'Hail') {
      return Colors.blue;
    } else if (weatherState == 'Heavy Cloud' ||
        weatherState == 'Moderate rain') {
      return Colors.blueGrey;
    } else if (weatherState == 'Patchy rain possible' ||
        weatherState == 'Heavy Rain' ||
        weatherState == 'Showers') {
      return Colors.lightBlue;
    } else if (weatherState == 'Thundery outbreaks possible' ||
        weatherState == 'Moderate or heavy snow with thunder' ||
        weatherState == 'Patchy light snow with thunder' ||
        weatherState == 'Moderate or heavy rain with thunder' ||
        weatherState == 'Patchy light rain with thunder') {
      return Colors.amber;
    } else {
      return Colors.cyan;
    }
  }
}
