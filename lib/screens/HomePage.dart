// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Modules/Models.dart';
// import 'package:flutter_application_1/providers/weatherProvider.dart';
// import 'package:flutter_application_1/screens/SearchPage.dart';
// import 'package:provider/provider.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   void UI_update() {
//     setState(() {});
//   }

//   WeatherModel? weatherData;
//   @override
//   Widget build(BuildContext context) {
//     weatherData = Provider.of<weatherProviderclass>(context).weatherData;

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: ((context) {
//                     return SearchPage(
//                       UI_update: UI_update,
//                     );
//                   }),
//                 ),
//               );
//             },
//             icon: Icon(
//               Icons.search,
//             ),
//           ),
//         ],
//         title: Text(
//           'Home',
//         ),
//       ),
//       body: weatherData == null
//           ? Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Spacer(
//                   flex: 2,
//                 ),
//                 Center(
//                   child: Text(
//                     'No Citys Avilabel Now ',
//                     style: TextStyle(
//                       fontSize: 15.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Spacer(
//                   flex: 1,
//                 ),
//                 Center(
//                   child: Text(
//                     'Scrch about Youre city Now',
//                     style: TextStyle(
//                       fontSize: 15.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Spacer(
//                   flex: 2,
//                 ),
//               ],
//             )
//           // start of new screen
//           // --------------------------
//           : Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                     weatherData!.backGrongThems()[900]!,
//                     weatherData!.backGrongThems()[400]!,
//                     weatherData!.backGrongThems()[300]!,
//                     weatherData!.backGrongThems()[200]!,
//                     weatherData!.backGrongThems()[100]!,
//                     weatherData!.backGrongThems()[100]!,
//                     weatherData!.backGrongThems()[100]!,
//                     weatherData!.backGrongThems(),
//                   ])),
//               // color: weatherData!.backGrongThems(),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text(
//                     weatherData!.cityName ?? ' please Enter City Name Again',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40,
//                     ),
//                   ),
//                   Text(
//                     weatherData!.date,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Image.asset(
//                           weatherData!.ImageIcon(),
//                         ),
//                         Text(
//                           'Average temp is ${weatherData!.avgTemp.toInt().toString()}',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                         Column(
//                           children: [
//                             // 'Min temp 20'
//                             Text(
//                               'Max Temp ${weatherData!.maxTemp.toInt()}',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                               ),
//                             ),
//                             // 'max temp 20'
//                             Text(
//                               'Min Temp ${weatherData!.minTemp.toInt()}',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   Text(
//                     // weather state
//                     weatherData!.weatherState ??
//                         'Sorry Cant Fint Weather State Now try a gain ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }

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
          ? Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No Cities Available Now',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Search for your city now',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          : Container(
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: weatherData!.backGrongThems(),
                  // ),
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      weatherData!.cityName ?? 'Please Enter City Name Again',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      weatherData!.date,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Image.asset(
                      weatherData!.ImageIcon(),
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      'Average Temperature: ${weatherData!.avgTemp.toInt()}°',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Max Temp: ${weatherData!.maxTemp.toInt()}°',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Min Temp: ${weatherData!.minTemp.toInt()}°',
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
                      weatherData!.weatherState ??
                          'Sorry, cannot find weather state now. Try again.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
