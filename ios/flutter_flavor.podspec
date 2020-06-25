#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_flavor'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin for flavors.'
  s.description      = <<-DESC
  Flutter plugin for flavors.
                       DESC
  s.homepage         = 'https://github.com/ekleel/flutter_flavor'
  s.license          = { :type => 'BSD', :file => '../LICENSE' }
  s.author           = { 'Ekleel Team' => 'info@ekleel.net' }
  s.source           = { :http => 'https://github.com/ekleel/flutter_flavor' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
  end

