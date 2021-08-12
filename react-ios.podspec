#
# Be sure to run `pod lib lint react-ios.podspec" to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = "react-ios"
  s.version = "0.63.4.3"
  s.summary = "An runtime base on react-native."
  s.description =
  <<-DESC
  "Introduce this library for your App, development by react-native code."
  DESC

  s.homepage = "https://github.com/beatjs/react-ios"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Liam Xu" => "liamxujia@outlook.com" }
  s.source = { :git => "https://github.com/beatjs/react-ios.git", :tag => s.version.to_s }
  s.platforms = { :ios => "11.0"}
  s.library = "stdc++"
  s.framework = 
  "JavaScriptCore",
  "Photos",
  "CoreServices"
  s.ios.deployment_target = "11.0"
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES"
  }

  s.vendored_frameworks =
    "CoreModules.xcframework",
    "cxxreact.xcframework",
    "DoubleConversion.xcframework",
    "FBReactNativeSpec.xcframework",
    "folly.xcframework",
    "glog.xcframework",
    "jsi.xcframework",
    "jsinspector.xcframework",
    "jsireact.xcframework",
    "RCTAnimation.xcframework",
    "RCTBlob.xcframework",
    "RCTImage.xcframework",
    "RCTLinking.xcframework",
    "RCTNetwork.xcframework",
    "RCTSettings.xcframework",
    "RCTText.xcframework",
    "RCTTypeSafety.xcframework",
    "RCTVibration.xcframework",
    "React.xcframework",
    "ReactCommon.xcframework",
    "yoga.xcframework"
    
end
