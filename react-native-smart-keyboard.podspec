require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-smart-keyboard'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/peterjuras/react-native-smart-keyboard', :tag => s.version }

  s.requires_arc   = true
  s.platform       = :ios, '9.0'

  s.preserve_paths = 'LICENSE', 'README.md'
  s.source_files   = 'ios/RCTSmartKeyboard/**/*.{h,m}'

  s.dependency 'React'
end
