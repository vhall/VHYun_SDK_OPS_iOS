
Pod::Spec.new do |spec|
  
  spec.name         = 'VHYun_OPS'
  spec.version      = '2.4.1'

  spec.summary      = "VHall iOS SDK #{spec.name.to_s}"
  spec.homepage     = 'https://www.vhall.com'
  spec.author       = { "LiGuoliang" => "guoliang.li@vhall.com" }
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.source       = { :http => "https://ipa.e.vhall.com/app/sdk_release/iOS/iOS#{spec.name.to_s}_#{spec.version.to_s}.zip" }
  spec.vendored_frameworks = 'build/*.framework'
  spec.source_files = "**/*.h"

  spec.module_name  = "#{spec.name.to_s}"
  spec.requires_arc = true
  spec.frameworks   = 'Foundation'
  spec.platform     = :ios, '9.0'
  spec.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/**',
    'HEADER_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/**',
  }
  spec.dependency 'VHCore','>=2.0.3'
end