import 'dart:async';

import 'package:flutter/services.dart';

class MydeviceInfo {
  static const MethodChannel _channel =
      const MethodChannel('mydevice_info');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
