# Uncomment the next line to define a global platform for your project
platform :ios, '16.0'

#Define the workspace
workspace "SBuddy.xcworkspace"
use_frameworks!

pod_targets = [
  "Pods-SBuddy",
  "Pods-Subscription",
  "Pods-BarView",
]

unlinked_frameworks = [
  "SBuddy",
  "Subscription",
  "BarView",
]


target 'SBuddy' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SBuddy
  pod "Subscription", :path => "Features/Subscription/.module.podspec"
  pod "BarView", :path => "Libraries/BarView/.module.podspec"

  target 'SBuddyTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SBuddyUITests' do
    # Pods for testing
  end

end

# We grouping the target based on the function
abstract_target 'Features' do
  
  target 'Subscription' do
    
    # We can add some dependencies below!
    # Pods for Subscription
    def main_dependencies
      pod "BarView", :path => "Libraries/BarView/.module.podspec"
    end
  
    # Define the project locations
    project "Features/Subscription/Subscription.xcodeproj"
    
    # Call the main_dependencies variables for including in Subscription Target
    main_dependencies
    
    # Target for Demo Purposes
    target "Subscription-Demo" do
      main_dependencies
      #Add Subscription framework using cocoapods
      pod "Subscription", :path => "Features/Subscription/.module.podspec"
    end
  end
  
end


abstract_target 'Libraries' do
  
  target 'BarView' do
    
    # We can add some dependencies below!
    # Pods for Subscription
    def main_dependencies
    
    end
  
    # Define the project locations
    project "Libraries/BarView/BarView.xcodeproj"
    
    # Call the main_dependencies variables for including in Subscription Target
    main_dependencies
    
  end
  
end


# We must unlink the framework to make sure the framework is not overlapping or double
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '16.0'
    end
    
    if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
      target.build_configurations.each do |config|
          config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      end
    end
  end
  
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        pod_xcconfig_reference = config.base_configuration_reference
        unless pod_xcconfig_reference.nil?
          pod_xcconfig_path = pod_xcconfig_reference.real_path
          pod_xcconfig = File.read(pod_xcconfig_path)

          if pod_targets.include? target.name
            unlinked_frameworks.each do |framework|
              pod_xcconfig = pod_xcconfig.gsub(/ -framework "#{framework}"/, "")
            end

            File.open(pod_xcconfig_path, "w") { |file| file << pod_xcconfig }
          end
        end

        config.build_settings.delete "IPHONEOS_DEPLOYMENT_TARGET"
      end
    end
end
