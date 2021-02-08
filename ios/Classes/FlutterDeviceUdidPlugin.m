#import "FlutterDeviceUdidPlugin.h"
#import "DeviceUID.h"

@implementation FlutterDeviceUdidPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_device_udid"
            binaryMessenger:[registrar messenger]];
  FlutterDeviceUdidPlugin* instance = [[FlutterDeviceUdidPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getDeviceId" isEqualToString:call.method]) {
    NSString *uniqueId = [DeviceUID uid];
    result(uniqueId);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
