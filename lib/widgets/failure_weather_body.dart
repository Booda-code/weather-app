import 'package:flutter/cupertino.dart';

class FailureWeatherBody extends StatelessWidget {
  const FailureWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(),
        Text(
          'Oops There Was An Error 😔',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
