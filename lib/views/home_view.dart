import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/widget/no_weather_body.dart';
import 'package:weather_app/widget/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeViewId';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherApp'),
        backgroundColor: Colors.amber,
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is NoWeatherState)
            return NoWeatherBody();
          else if (state is WeatherLoadedState)
            return WeatherInfoBody();
          else
            return Text('opps there was an error');
        },
      ),
    );
  }
}
