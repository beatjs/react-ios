#
# Be sure to run `pod lib lint react-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = 'react-ios'
  s.version = '0.67.4.5'
  s.summary = 'An runtime base on react-native.'
  s.description =
  <<-DESC
  'Introduce this library for your App, development by react-native code.'
  DESC
  s.homepage = 'https://github.com/beatjs/react-ios'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Liam Xu' => 'liamxujia@outlook.com' }
  s.source = { :git => 'https://github.com/beatjs/react-ios.git', :tag => s.version.to_s }
  s.platforms = { :ios => '11.0'}
  s.module_name = 'ReactNative'
  s.library = 'stdc++'
  s.framework = 
  'JavaScriptCore'
  s.ios.deployment_target = '11.0'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  s.vendored_frameworks =
    'Framework/CoreModules.xcframework',
    'Framework/cxxreact.xcframework',
    'Framework/DoubleConversion.xcframework',
    'Framework/FBReactNativeSpec.xcframework',
    'Framework/folly.xcframework',
    'Framework/glog.xcframework',
    'Framework/jsi.xcframework',
    'Framework/jsinspector.xcframework',
    'Framework/jsireact.xcframework',
    'Framework/logger.xcframework',
    'Framework/RCTAnimation.xcframework',
    'Framework/RCTBlob.xcframework',
    'Framework/RCTImage.xcframework',
    'Framework/RCTLinking.xcframework',
    'Framework/RCTNetwork.xcframework',
    'Framework/RCTSettings.xcframework',
    'Framework/RCTText.xcframework',
    'Framework/RCTTypeSafety.xcframework',
    'Framework/RCTVibration.xcframework',
    'Framework/React.xcframework',
    'Framework/ReactCommon.xcframework',
    'Framework/reactperflogger.xcframework',
    'Framework/yoga.xcframework'
    s.dependency 'fmt', '~> 6.2.1'
end
