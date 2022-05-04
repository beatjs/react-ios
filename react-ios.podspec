#
# Be sure to run `pod lib lint react-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = 'react-ios'
  s.version = '0.67.4.2'
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
  s.module_name = 'React'
  s.library = 'stdc++'
  s.framework = 
  'JavaScriptCore',
  'Photos',
  'CoreServices'
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  s.vendored_frameworks =
    'Framework/BVLinearGradient.xcframework',
    'Framework/CodePush.xcframework',
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
    'Framework/lottie_react_native.xcframework',
    'Framework/RCTAnimation.xcframework',
    'Framework/RCTBlob.xcframework',
    'Framework/RCTImage.xcframework',
    'Framework/RCTLinking.xcframework',
    'Framework/RCTNetwork.xcframework',
    'Framework/RCTSettings.xcframework',
    'Framework/RCTText.xcframework',
    'Framework/RCTTypeSafety.xcframework',
    'Framework/RCTVibration.xcframework',
    'Framework/react_native_blur.xcframework',
    'Framework/react_native_get_random_values.xcframework',
    'Framework/react_native_image_resizer.xcframework',
    'Framework/react_native_pager_view.xcframework',
    'Framework/react_native_safe_area_context.xcframework',
    'Framework/react_native_video.xcframework',
    'Framework/react_native_view_shot.xcframework',
    'Framework/react_native_webview.xcframework',
    'Framework/React.xcframework',
    'Framework/ReactCommon.xcframework',
    'Framework/reactperflogger.xcframework',
    'Framework/RNCMaskedView.xcframework',
    'Framework/RNDeviceInfo.xcframework',
    'Framework/RNFastImage.xcframework',
    'Framework/RNGestureHandler.xcframework',
    'Framework/RNReanimated.xcframework',
    'Framework/RNSentry.xcframework',
    'Framework/RNSVG.xcframework',
    'Framework/yoga.xcframework' 
  s.dependency 'Base64', '~> 1.1.2'
  s.dependency 'DVAssetLoaderDelegate', '~> 0.3.3'
  s.dependency 'fmt', '~> 6.2.1'
  s.dependency 'JWT', '~> 3.0.0-beta.14'
  s.dependency 'libwebp', '~> 1.2.1'
  s.dependency 'lottie-ios', '~> 3.2.3'
  s.dependency 'SDWebImage', '~> 5.11.1'
  s.dependency 'SDWebImageWebPCoder', '~> 0.8.4'
  s.dependency 'Sentry', '~> 7.11.0'
  s.dependency 'SSZipArchive', '~> 2.2.3'
  s.dependency 'SPTPersistentCache', '~> 1.1.0'
end
