Pod::Spec.new do |s|
  s.name             = 'Debounce'
  s.version          = '1.5.1'
  s.summary          = 'A tiny library used for debouncing (throttling) needs, written in Swift.'
  s.description      = <<-DESC
  This library is designed to be a lightweight dependency to satisfy debouncing or throttling needs.
                       DESC

  s.homepage         = 'https://github.com/cgossain/Debounce'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Christian Gossain' => 'cgossain@gmail.com' }
  s.source           = { :git => 'https://github.com/cgossain/Debounce.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/Debounce/**/*'
end
