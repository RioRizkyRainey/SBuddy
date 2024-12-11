base_dir = ""

Pod::Spec.new do |spec|
  spec.name = "Subscription"
  spec.version = "0.0.1"
  spec.summary = "Description of Subscription"

  spec.homepage = "https://github.com/RioRizkyRainey/SBuddy.git"
  spec.license = "MIT"
  spec.author = { "iOS Team" => "ios-team@speakbuddy.com" }

  spec.platform = :ios, "16.0"
  spec.swift_version = "5.0"
  
  spec.source = {
    :git => "https://github.com/RioRizkyRainey/SBuddy.git",
    :branch => "master",
  }

  spec.source_files = "#{base_dir}Source", "#{base_dir}Source/**/*.{swift}"
  spec.public_header_files = "#{base_dir}Source/**/*.h"
  spec.exclude_files = "#{base_dir}UnitTests", "#{base_dir}Demo"
  spec.resources = "#{base_dir}Source/**/*.{xib,xcassets,png,pdf,json   }"

  spec.static_framework = true
  
  spec.dependency "BarView"

end
