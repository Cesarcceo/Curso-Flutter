import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 80;
  bool _SliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 80,
              max: 550,
              divisions: 20,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _SliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Switch(
          //     value: _SliderEnable,
          //     onChanged: (value) => setState(() {
          //           _SliderEnable = value;
          //         })),
          // Checkbox(
          //     value: _SliderEnable,
          //     onChanged: (value) {
          //       _SliderEnable = value ?? true;
          //       setState(() {});
          //     }),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('habilitar Slider'),
              value: _SliderEnable,
              onChanged: (value) => setState(() {
                    _SliderEnable = value ?? true;
                  })),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('habilitar Slider'),
              value: _SliderEnable,
              onChanged: (value) => setState(() {
                    _SliderEnable = value;
                  })),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/736x/41/69/1d/41691d14e36e2673f6622e525533d816.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
