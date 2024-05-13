import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  static String id = "searchViewId";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 200,
        ),
        child: TextField(
          onSubmitted: (value) {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: InputDecoration(
            labelText: 'Search',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            hintText: 'Enter a city',
            hintStyle: TextStyle(fontWeight: FontWeight.w300),
            border: OutlineInputBorder(
                // borderSide: BorderSide(color: Colors.amber),
                ),
          ),
        ),
      ),
    );
  }
}
