import 'package:flutter/cupertino.dart';

class CustomWeatherCondationText extends StatelessWidget {
  const CustomWeatherCondationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Updated at: ${DateTime.now().hour}:${DateTime.now().minute.toString().padLeft(2, '0')}',
      style: const TextStyle(fontSize: 25),
    );

  }
}