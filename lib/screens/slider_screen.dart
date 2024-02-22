import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 60,
              max: 400,
              divisions: 20,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://i.pinimg.com/736x/41/69/1d/41691d14e36e2673f6622e525533d816.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
