
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterDeviceUdid {
  static const MethodChannel _channel =
      const MethodChannel('flutter_device_udid');

  /// 获取设备唯一标识
  static Future<String> get udid async {
    final String deviceId = await _channel.invokeMethod('getDeviceId');
    return deviceId;
  }
}
