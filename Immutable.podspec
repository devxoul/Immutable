Pod::Spec.new do |s|
  s.name             = 'Immutable'
  s.version          = '0.5.0'
  s.summary          = 'Not yet implemented functions in Swift.'
  s.homepage         = 'https://github.com/devxoul/Immutable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Suyeol Jeon' => 'devxoul@gmail.com' }
  s.source           = { :git => 'https://github.com/devxoul/Immutable.git',
                         :tag => s.version.to_s }
  s.source_files     = "Sources/**/*.swift"
  s.swift_version    = "5.0"

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
end
