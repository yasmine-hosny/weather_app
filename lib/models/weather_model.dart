class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.temp,
      required this.minTemp,
      required this.maxTemp,
      required this.weatherCondition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['city_name'],
      date: json['data'][0]['datetime'],
      temp: json['data'][0]['temp'],
      minTemp: json['data'][0]['min_temp'],
      maxTemp: json['data'][0]['max_temp'],
      weatherCondition: json['data'][0]['weather']['description'],
      image: json['data'][0]['weather']['icon'],
    );
  }
}
