

import 'dart:math';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class WeatherFake with ChangeNotifier {
  double _temperature = 20 + Random().nextInt(15) + Random().nextDouble();
  String _city = "London";

  double get temperature => _temperature;
  String get city => _city;

  set temperature(double value) {
    _temperature = value;
    notifyListeners();
  }

  set city(String value) {
    _city = value;
    notifyListeners();
  }
}