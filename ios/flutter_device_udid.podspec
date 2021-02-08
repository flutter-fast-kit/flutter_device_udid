#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_device_udid.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_device_udid'
  s.version          = '1.0.0'
  s.summary          = '获取设备唯一标识.'
  s.description      = <<-DESC
获取设备唯一标识.
                       DESC
  s.homepage         = 'http://192.168.1.37/aitd-hurong/sgp-flutter/flutter_device_udid'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'SGP Exchange' => 'lunnnnul@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
