Pod::Spec.new do |s|
  s.name             = 'Brotli-ObjC'
  s.version          = '0.0.5'
  s.summary          = 'A Framework of Google Brotli in ObjC'
  s.homepage         = 'https://github.com/iOSCodoon/Brotli-ObjC'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iOSCodoon' => 'ios@codoon.com' }
  s.source           = { :git => 'https://github.com/iOSCodoon/Brotli-ObjC.git', :tag => s.version.to_s }
  s.source_files = 'Brotli-ObjC/**/*.{h,c,mm}'
  s.public_header_files = 'Brotli-ObjC/NSData+Brotli.h'
  s.ios.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  s.libraries        = 'stdc++'
  s.pod_target_xcconfig = { 'OTHER_CFLAGS' => '-fgnu-inline-asm' }
end
