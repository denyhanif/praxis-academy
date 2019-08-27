import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mydevice_info/mydevice_info.dart';

void main() {
  const MethodChannel channel = MethodChannel('mydevice_info');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MydeviceInfo.platformVersion, '42');
  });
}
