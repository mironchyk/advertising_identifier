#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint advertising_identifier.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'advertising_identifier'
  s.version          = '0.1.0'
  s.summary          = 'Flutter plugin for Advertising Identifier.'
  s.description      = <<-DESC
Flutter plugin for Advertising Identifier.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  s.subspec 'vendor' do |sp|
    sp.frameworks = 'AdSupport', 'AppTrackingTransparency'
  end

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
