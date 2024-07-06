import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modules/Models.dart';
import 'package:flutter_application_1/providers/weatherProvider.dart';
import 'package:flutter_application_1/screens/SearchPage.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void UI_update() {
    setState(() {});
  }

  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<weatherProviderclass>(context).weatherData;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return SearchPage(
                      UI_update: UI_update,
                    );
                  }),
                ),
              );
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        title: Text(
          'Home',
        ),
      ),
      body: weatherData == null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Center(
                  child: Text(
                    'No Citys Avilabel Now ',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Center(
                  child: Text(
                    'Scrch about Youre city Now',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            )
          // start of new screen
          // --------------------------
          : Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    weatherData!.backGrongThems()[900]!,
                    weatherData!.backGrongThems()[400]!,
                    weatherData!.backGrongThems()[300]!,
                    weatherData!.backGrongThems()[200]!,
                    weatherData!.backGrongThems()[100]!,
                    weatherData!.backGrongThems()[100]!,
                    weatherData!.backGrongThems()[100]!,
                    weatherData!.backGrongThems(),
                  ])),
              // color: weatherData!.backGrongThems(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    weatherData!.cityName ?? ' please Enter City Name Again',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    weatherData!.date,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        weatherData!.ImageIcon(),
                      ),
                      Text(
                        'Average temp is ${weatherData!.avgTemp.toInt().toString()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Column(
                        children: [
                          // 'Min temp 20'
                          Text(
                            'Max Temp ${weatherData!.maxTemp.toInt()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          // 'max temp 20'
                          Text(
                            'Min Temp ${weatherData!.minTemp.toInt()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text(
                    // weather state
                    weatherData!.weatherState ??
                        'Sorry Cant Fint Weather State Now try a gain ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
