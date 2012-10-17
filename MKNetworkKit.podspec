Pod::Spec.new do |s|
  s.name         = "MKNetworkKit"
  s.version      = "0.83"
  s.summary      = "Full ARC based Networking Kit for iOS 4+ devices"
  s.homepage     = "http://mk.sg/8w"
  s.license      = { :type => 'MIT', :file => 'README.mdown' }
  s.author       = 'Ingenious Med, Inc.', 'MugunthKumar'
  s.source       = { :git => "https://github.com/IngeniousMed/MKNetworkKit.git", :tag => "v0.83" }
  s.platform     = :ios, '4.3'
  s.source_files = 'MKNetworkKit', 'MKNetworkKit/**/*.{h,m}'
  s.frameworks = 'CFNetwork.Framework', 'SystemConfiguration.framework', 'Security.framework'
  s.requires_arc = true
end
