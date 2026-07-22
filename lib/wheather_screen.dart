import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final String apiKey = "f0f558e26fee4306da3ed33df6cf4701";

  final TextEditingController cityController =
  TextEditingController(text: "Islamabad");

  bool isLoading = false;
  Map<String, dynamic>? weatherData;

  Future<void> getWeather() async {
    String cityName = cityController.text.trim();

    if (cityName.isEmpty) return;

    setState(() {
      isLoading = true;
    });

    try {
      final url = Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric");

      final response = await http.get(url);

      if (response.statusCode == 200) {
        weatherData = jsonDecode(response.body);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("City not found")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  String formatTime(int time) {
    DateTime date =
    DateTime.fromMillisecondsSinceEpoch(time * 1000, isUtc: true)
        .toLocal();

    String hour = date.hour > 12
        ? (date.hour - 12).toString()
        : date.hour.toString();

    if (hour == "0") hour = "12";

    String minute = date.minute.toString().padLeft(2, '0');

    String period = date.hour >= 12 ? "PM" : "AM";

    return "$hour:$minute $period";
  }

  Widget buildTile(String title, String value) {
    return Card(
      elevation: 3,
      child: ListTile(
        title: Text(title),
        trailing: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            TextField(
              controller: cityController,
              decoration: InputDecoration(
                hintText: "Enter City",
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: getWeather,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            if (isLoading)
              const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            else if (weatherData != null)
              Expanded(
                child: ListView(
                  children: [

                    Center(
                      child: Image.network(
                        "https://openweathermap.org/img/wn/${weatherData!['weather'][0]['icon']}@4x.png",
                        width: 120,
                      ),
                    ),

                    Center(
                      child: Text(
                        weatherData!["name"],
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Center(
                      child: Text(
                        weatherData!["sys"]["country"],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),

                    const SizedBox(height: 20),

                    buildTile(
                        "Temperature",
                        "${weatherData!["main"]["temp"]} °C"),

                    buildTile(
                        "Feels Like",
                        "${weatherData!["main"]["feels_like"]} °C"),

                    buildTile(
                        "Minimum Temp",
                        "${weatherData!["main"]["temp_min"]} °C"),

                    buildTile(
                        "Maximum Temp",
                        "${weatherData!["main"]["temp_max"]} °C"),

                    buildTile(
                        "Weather",
                        weatherData!["weather"][0]["main"]),

                    buildTile(
                        "Description",
                        weatherData!["weather"][0]["description"]),

                    buildTile(
                        "Humidity",
                        "${weatherData!["main"]["humidity"]}%"),

                    buildTile(
                        "Pressure",
                        "${weatherData!["main"]["pressure"]} hPa"),

                    buildTile(
                        "Wind Speed",
                        "${weatherData!["wind"]["speed"]} m/s"),

                    buildTile(
                        "Visibility",
                        "${weatherData!["visibility"] / 1000} km"),

                    buildTile(
                        "Sunrise",
                        formatTime(weatherData!["sys"]["sunrise"])),

                    buildTile(
                        "Sunset",
                        formatTime(weatherData!["sys"]["sunset"])),

                    buildTile(
                        "Updated At",
                        formatTime(weatherData!["dt"])),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}