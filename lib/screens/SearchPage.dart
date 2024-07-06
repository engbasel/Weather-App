import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modules/Models.dart';
import 'package:flutter_application_1/providers/weatherProvider.dart';
import 'package:provider/provider.dart';
import '../serveces/Service.dart';

class SearchPage extends StatelessWidget {
  SearchPage({this.UI_update});
  VoidCallback? UI_update;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Serch about your page',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(
                15.0,
              ),
              child: TextField(
                onSubmitted: (Text_input_In_serch_box) async {
                  WeatherService service = WeatherService();
                  WeatherModel weather = await service.getWeather(
                      cityName: Text_input_In_serch_box);
                  print(weather);
                  Provider.of<weatherProviderclass>(context, listen: false)
                      .weatherData = weather;
                  Navigator.pop(context);
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text('serch'),
                  suffix: Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'City Name ',
                ),
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
