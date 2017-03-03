Pod::Spec.new do |s|
  s.name             = 'Yet'
  s.version          = '0.1.0'
  s.summary          = 'Not yet implemented functions in Swift.'
  s.homepage         = 'https://github.com/devxoul/Yet'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Suyeol Jeon' => 'devxoul@gmail.com' }
  s.source           = { :git => 'https://github.com/devxoul/Yet.git',
                         :tag => s.version.to_s }
  s.source_files     = "Sources/*.swift"

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '3.0'
  }
end
