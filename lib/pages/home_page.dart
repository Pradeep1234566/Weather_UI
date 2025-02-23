// screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/widgets/serach.dart';
import 'package:weather_app/widgets/weather.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SearchBarWidget(), // Search bar component
            const SizedBox(height: 20),

            // Lottie Animation for Weather
            SizedBox(
              height: 200,
              child: Lottie.asset('assets/Animations/Sunny.json'),
            ),

            const SizedBox(height: 20),

            // Temperature and Weather Info
            const Text(
              '28°C',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Bangalore, India',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // Weather details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                WeatherInfoCard(label: 'Humidity', value: '65%'),
                WeatherInfoCard(label: 'Wind Speed', value: '12 km/h'),
                WeatherInfoCard(label: 'UV Index', value: '4'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
