#
# Be sure to run `pod lib lint ReactNativeCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
boost_compiler_flags = '-Wno-documentation'

Pod::Spec.new do |s|
  s.name = 'ReactNativeCore'
  s.version = '0.1.0'
  s.summary = 'An runtime base on react-native.'
  s.description =
  <<-DESC
  'Introduce this library for your App, development by react-native code.'
  DESC

  s.homepage = 'https://github.com/beatjs/ReactNativeCore'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Liam Xu' => 'liamxujia@outlook.com' }
  s.source = { :git => 'https://github.com/beatjs/ReactNativeCore.git', :tag => s.version.to_s }
  
  s.module_name = 'React'
  s.resource_bundle = { 'AccessibilityResources' => ['React/AccessibilityResources/*.lproj']}
  s.header_dir = 'React'
  s.library = 'stdc++'
  s.framework = 
  'JavaScriptCore',
  'Photos'
  s.ios.deployment_target = '11.0'
  s.pod_target_xcconfig = {
     'DEFINES_MODULE' => 'YES',
     'HEADER_SEARCH_PATHS' => '\'$(PODS_ROOT)/boost-for-react-native\' \'$(PODS_ROOT)/DoubleConversion\' \'$(PODS_ROOT)/glog\' \'$(PODS_ROOT)/Yoga\' \'$(PODS_ROOT)/ReactNativeFolly\' \'$(PODS_ROOT)/ReactNativeJsi\' \'$(PODS_ROOT)/ReactNativeCxxreact\' \'$(PODS_ROOT)/ReactNativeInspector\' \'$(PODS_ROOT)/ReactNativeExecutor\' \'$(PODS_ROOT)/ReactNativeCallinvoker\' \'$(PODS_ROOT)/ReactNativeRequired\' \'$(PODS_ROOT)/ReactNativeLazyVector\''
  }
  s.user_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '\'$(PODS_ROOT)/Headers/Private/ReactNativeCore\''}
  s.compiler_flags = folly_compiler_flags + ' ' + boost_compiler_flags + ' -Wno-nullability-completeness'

  # #import <ReactCommon/*> -> #import <React/*>
  s.subspec 'ReactCommon' do |ss|
    ss.source_files =
    'ReactCommon/turbomodule/core/**/*.{h,mm,m,cpp}'
    ss.exclude_files =
    'ReactCommon/turbomodule/core/platform/android/**/*'
  end

  # #import <RCTTypeSafety/*> -> #import <React/*>
  s.subspec 'RCTTypeSafety' do |ss|
    ss.source_files =
    'Libraries/TypeSafety/**/*.{h,mm}'
  end

  # #import <FBReactNativeSpec/*> -> #import <React/*>
  s.subspec 'FBReactNativeSpec' do |ss|
    ss.source_files =
    'Libraries/FBReactNativeSpec/FBReactNativeSpec/**/*.{h,mm,cpp}'
  end

  s.subspec 'Default' do |ss|
    ss.source_files = 'React/**/*.{c,h,m,mm,S,cpp}'
    ss.exclude_files =
    'React/CoreModules/**/*',
    'React/DevSupport/**/*',
    'React/Fabric/**/*',
    'React/Inspector/**/*'
    ss.ios.exclude_files = 'React/**/RCTTV*.*'
    ss.tvos.exclude_files =
    'React/Modules/RCTClipboard*',
    'React/Views/RCTDatePicker*',
    'React/Views/RCTPicker*',
    'React/Views/RCTRefreshControl*',
    'React/Views/RCTSlider*',
    'React/Views/RCTSwitch*',
    ss.private_header_files = 'React/Cxx*/*.h'
  end
  
  s.subspec 'RCTWebSocket' do |ss|
    ss.source_files = 'Libraries/WebSocket/*.{h,m}'
    ss.dependency 'ReactNativeCore/Default'
  end
  
  s.subspec 'DevSupport' do |ss|
    ss.source_files =
    'React/DevSupport/*.{h,mm,m}',
    'React/Inspector/*.{h,mm,m}'

    ss.dependency 'ReactNativeCore/Default'
    ss.dependency 'ReactNativeCore/RCTWebSocket'
    ss.dependency 'ReactNativeCore/ReactCommon'
  end

  s.subspec 'CoreModules' do |ss|
    ss.source_files = 'React/CoreModules/**/*.{c,h,m,mm,cpp}'
    ss.dependency 'ReactNativeCore/Default'
    ss.dependency 'ReactNativeCore/ReactCommon'
    ss.dependency 'ReactNativeCore/RCTTypeSafety'
    ss.dependency 'ReactNativeCore/FBReactNativeSpec'
    ss.dependency 'ReactNativeFolly'
    ss.dependency 'ReactNativeJsi'
  end

  s.subspec 'RCTActionSheet' do |ss|
    ss.source_files = 'Libraries/ActionSheetIOS/**/*.{h,m}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTAnimation' do |ss|
    ss.source_files = 'Libraries/NativeAnimation/{Drivers/*,Nodes/*,*}.{h}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTBlob' do |ss|
    ss.source_files = 'Libraries/Blob/*.{h,m,mm}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTImage' do |ss|
    ss.source_files = 'Libraries/Image/*.{h,m,mm}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTLinking' do |ss|
    ss.source_files = 'Libraries/LinkingIOS/*.{h,m,mm}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTNetwork' do |ss|
    ss.source_files = 'Libraries/Network/*.{h,m,mm}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTSettings' do |ss|
    ss.source_files = 'Libraries/Settings/*.{h,m,mm}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTText' do |ss|
    ss.source_files = 'Libraries/Text/**/*.{h,m,mm}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.subspec 'RCTVibration' do |ss|
    ss.source_files = 'Libraries/Vibration/*.{h,m,mm}'
    ss.dependency 'ReactNativeCore/Default'
  end

  s.dependency 'boost-for-react-native', '1.63.0'
  s.dependency 'DoubleConversion', '1.1.5'
  s.dependency 'glog', '0.3.4'
  s.dependency 'Yoga', '1.14.0'
  s.dependency 'ReactNativeFolly'
  s.dependency 'ReactNativeJsi'
  s.dependency 'ReactNativeCxxreact'
  s.dependency 'ReactNativeInspector'
  s.dependency 'ReactNativeExecutor'
  s.dependency 'ReactNativeCallInvoker'
  s.dependency 'ReactNativeRequired'
  s.dependency 'ReactNativeLazyVector'
  
  s.platforms = { :ios => '11.0' }
end
