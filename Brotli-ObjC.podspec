Pod::Spec.new do |s|
  s.name             = 'Brotli-ObjC'
  s.version          = '0.0.1'
  s.summary          = 'A Framework of Google Brotli in ObjC'
  s.homepage         = 'https://github.com/iOSCodoon/Brotli-ObjC'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iOSCodoon' => 'ios@codoon.com' }
  s.source           = { :git => 'https://github.com/iOSCodoon/Brotli-ObjC.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'Brotli-ObjC/*', 'Brotli-ObjC/src/**/*'

  s.public_header_files = 'Brotli-ObjC/NSData+Brotli.h'
end
