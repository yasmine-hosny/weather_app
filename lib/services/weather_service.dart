import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  // Request + Response
  final String baseUrl = 'https://api.weatherbit.io/v2.0',
      apiKey = '9605b32a52684d299835e14fe5745b9f';
  final Dio dio;
  WeatherService(this.dio);

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast/daily?city=$cityName&key=$apiKey');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      String errMessage =
          e.response?.data['error'] ?? 'oops there are error, try later';
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('try Later');
    }
  }
}
