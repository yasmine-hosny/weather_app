import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'There is no weather ',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Searching now ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pushNamed(context, SearchView.id),
                icon: const Icon(Icons.search),
              )
            ],
          ),
        ],
      ),
    );
  }
}
