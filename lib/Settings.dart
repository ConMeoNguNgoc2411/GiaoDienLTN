import 'dart:math';

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  double _currentSliderValue = 0;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      mainAxisAlignment:MainAxisAlignment.center,

      children: [
        const ListTile(
          title: Center(child: Text("Điều Khiển Mạch",
            style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
        Slider(
              value: _currentSliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
          ),
        Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
        )
      ],
      
    ),
    );
  }
}

