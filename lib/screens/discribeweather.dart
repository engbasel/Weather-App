import 'package:flutter/material.dart';

class discribe_weatherScreen extends StatefulWidget {
  const discribe_weatherScreen({Key? key}) : super(key: key);
  @override
  State<discribe_weatherScreen> createState() => _discribe_weatherScreenState();
}

class _discribe_weatherScreenState extends State<discribe_weatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(
      //   title: Text(
      //     'Home ',
      //   ),
      // ),
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Text(
            'Cairo',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Last update 10:45',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.sunny,
                color: Colors.yellow,
                size: 40.0,
              ),
              Text(
                '30.0',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    'min temp 10',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'Maxtemp 10',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  )
                ],
              )
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'Clear',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
