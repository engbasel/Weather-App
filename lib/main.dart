import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modules/Models.dart';
import 'package:flutter_application_1/providers/weatherProvider.dart';
import 'package:flutter_application_1/screens/HomePage.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      child: weatherapp(),
      create: (context) {
        return weatherProviderclass();
      },
    ),
  );
}

class weatherapp extends StatelessWidget {
  WeatherModel? weatherProvider;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch:
            Provider.of<weatherProviderclass>(context).weatherData == null
                ? Colors.blue
                : Provider.of<weatherProviderclass>(context)
                    .weatherData!
                    .backGrongThems(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
