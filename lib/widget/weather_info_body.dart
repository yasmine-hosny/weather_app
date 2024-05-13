import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Alex',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        Text(
          'data',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('images'),
            Text(
              '17',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Column(
              children: [
                Text(
                  'max',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'min',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}
