import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Modules/Models.dart';

class weatherProviderclass extends ChangeNotifier {
  WeatherModel? _weatherData;
  set weatherData(WeatherModel? weather) {
    _weatherData = weather;
    notifyListeners();
  }

  WeatherModel? get weatherData => _weatherData;
}
