# Weather App

A Flutter-based weather application that provides real-time weather updates for any location. The app uses an API to fetch weather data and displays it in a user-friendly interface.

## Features

- 🌦 **Real-time Weather Updates**: Get current weather information such as temperature, humidity, wind speed, and weather conditions.
- 🔍 **Search by City**: Search for weather details of any city worldwide.
- 🌡 **Temperature Units**: Supports both Celsius and Fahrenheit.
- 🌎 **Dynamic UI**: Changes UI dynamically based on weather conditions.
- 📍 **Location Services**: Uses GPS to fetch the user's current location automatically.
- 🎨 **Modern UI/UX**: Designed with a smooth and intuitive user experience.

## Project Structure

```
lib/
├── models/
│   ├── weather_model.dart
├── providers/
│   ├── weather_provider.dart
├── screens/
│   ├── home_page.dart
│   ├── search_page.dart
│   ├── describe_weather.dart
├── services/
│   ├── weather_service.dart
├── main.dart
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/engbasel/Weather_App.git
   ```
2. Navigate to the project directory:
   ```sh
   cd Weather_App
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```

### Running the App

To run the application, use the following command:
```sh
flutter run
```

## Contributions

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or new features.

## License

This project is licensed under the MIT License.

## Acknowledgements

- [Flutter](https://flutter.dev/)
- [OpenWeather API](https://openweathermap.org/api)

