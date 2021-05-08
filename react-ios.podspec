#
# Be sure to run `pod lib lint react-ios.podspec" to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

folly_compiler_flags = "-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32"
boost_compiler_flags = "-Wno-documentation -Wno-nullability-completeness"
boost_for_react_native_version = "1.63.0"
double_conversion_version = "1.1.5"
glog_version = "0.3.4"
yoga_version = "1.14.0"

Pod::Spec.new do |s|
  s.name = "react-ios"
  s.version = "0.63.4.1"
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
  s.resource_bundle = { "AccessibilityResources" => ["React/AccessibilityResources/*.lproj"]}
  s.header_dir = "React"
  s.library = "stdc++"
  s.framework = 
  "JavaScriptCore",
  "Photos",
  "CoreServices"
  s.ios.deployment_target = "11.0"
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES"
  }
  s.compiler_flags = folly_compiler_flags + " " + boost_compiler_flags
  s.default_subspec = "All"
  
  s.subspec "All" do |ss|
    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/callinvoker"
    ss.dependency "react-ios/jsinspector"
    ss.dependency "react-ios/cxxreact"
    ss.dependency "react-ios/jsiexecutor"
    ss.dependency "react-ios/RCTRequired"
    ss.dependency "react-ios/FBLazyVector"
    ss.dependency "react-ios/Default"
    ss.dependency "react-ios/RCTAnimation"
    ss.dependency "react-ios/RCTNetwork"
    ss.dependency "react-ios/RCTBlob"
    ss.dependency "react-ios/RCTImage"
    ss.dependency "react-ios/RCTLinking"
    ss.dependency "react-ios/RCTSettings"
    ss.dependency "react-ios/RCTText"
    ss.dependency "react-ios/RCTVibration"
  end
  
  #import <React/*>
  s.subspec "folly" do |ss|
    ss.pod_target_xcconfig = {
        "USE_HEADERMAP" => "YES",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\""
    }
    ss.source_files =
    "folly/String.cpp",
    "folly/Conv.cpp",
    "folly/Demangle.cpp",
    "folly/FileUtil.cpp",
    "folly/Format.cpp",
    "folly/lang/SafeAssert.cpp",
    "folly/ScopeGuard.cpp",
    "folly/Unicode.cpp",
    "folly/dynamic.cpp",
    "folly/json.cpp",
    "folly/json_pointer.cpp",
    "folly/container/detail/F14Table.cpp",
    "folly/detail/Demangle.cpp",
    "folly/detail/UniqueInstance.cpp",
    "folly/hash/SpookyHashV2.cpp",
    "folly/lang/Assume.cpp",
    "folly/lang/CString.cpp",
    "folly/memory/detail/MallocImpl.cpp",
    "folly/net/NetOps.cpp",
    "folly/portability/SysUio.cpp"
    ss.preserve_paths =
    "folly/*.h",
    "folly/container/*.h",
    "folly/container/detail/*.h",
    "folly/detail/*.h",
    "folly/functional/*.h",
    "folly/hash/*.h",
    "folly/lang/*.h",
    "folly/memory/*.h",
    "folly/memory/detail/*.h",
    "folly/net/*.h",
    "folly/net/detail/*.h",
    "folly/portability/*.h"

    ss.dependency "boost-for-react-native", boost_for_react_native_version
    ss.dependency "DoubleConversion", double_conversion_version
    ss.dependency "glog", glog_version
  end
  
  #import <React/*>
  s.subspec "jsi" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "ReactCommon/jsi/**/*.{h,cpp}"
    ss.private_header_files =
    "ReactCommon/jsi/**/*.{h}"
    ss.exclude_files = "ReactCommon/jsi/jsi/test"

    ss.dependency "boost-for-react-native", boost_for_react_native_version
    ss.dependency "DoubleConversion", double_conversion_version
    ss.dependency "glog", glog_version
    ss.dependency "react-ios/folly"
  end

  #import <React/*>
  s.subspec "callinvoker" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "ReactCommon/callinvoker/ReactCommon/**/*.{h}"
    ss.private_header_files =
    "ReactCommon/callinvoker/ReactCommon/**/*.{h}"
  end

  #import <React/*>
  s.subspec "jsinspector" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "ReactCommon/jsinspector/**/*.{h,cpp}"
    ss.private_header_files =
    "ReactCommon/jsinspector/**/*.{h}"
  end

  #import <React/*>
  s.subspec "cxxreact" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "ReactCommon/cxxreact/**/*.{h,cpp}"
    ss.private_header_files =
    "ReactCommon/cxxreact/**/*.{h}"
    ss.exclude_files = "ReactCommon/cxxreact/tests"

    ss.dependency "boost-for-react-native", boost_for_react_native_version
    ss.dependency "DoubleConversion", double_conversion_version
    ss.dependency "glog", glog_version
    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsinspector"
    ss.dependency "react-ios/callinvoker"
  end

  #import <React/*>
  s.subspec "jsiexecutor" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "ReactCommon/jsiexecutor/jsireact/**/*.{h,cpp}"
    ss.private_header_files =
    "ReactCommon/jsiexecutor/jsireact/**/*.{h}"

    ss.dependency "DoubleConversion", double_conversion_version
    ss.dependency "glog", glog_version
    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/cxxreact"
  end

  #import <React/*>
  s.subspec "RCTRequired" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "Libraries/RCTRequired/**/*.{h,mm}"
    ss.private_header_files =
    "Libraries/RCTRequired/RCTRequired/RCTRequired.h"
  end
  
  #import <React/*>
  s.subspec "FBLazyVector" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "Libraries/FBLazyVector/FBLazyVector/**/*.{h}"
    ss.private_header_files =
    "Libraries/FBLazyVector/FBLazyVector/**/*.{h}"
  end

  s.subspec "Default" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files =
    "React/**/*.{c,h,m,mm,S,cpp}",
    "Libraries/TypeSafety/**/*.{h,mm}",
    "Libraries/FBReactNativeSpec/FBReactNativeSpec/**/*.{h,mm,cpp}",
    "ReactCommon/turbomodule/core/**/*.{h,mm,m,cpp}",
    "Libraries/WebSocket/*.{h,m}",
    "React/DevSupport/*.{h,mm,m}",
    "React/Inspector/*.{h,mm,m}"
    ss.exclude_files =
    "React/Fabric/**/*",
    "ReactCommon/turbomodule/core/platform/android/**/*"
    ss.private_header_files = 
    "React/Cxx*/*.h",
    "Libraries/TypeSafety/RCTConvertHelpers.h",
    "Libraries/TypeSafety/RCTTypedModuleConstants.h",
    "Libraries/FBReactNativeSpec/FBReactNativeSpec/**/*.{h}",
    "ReactCommon/turbomodule/core/**/*.{h}"

    ss.dependency "Yoga", yoga_version
    ss.dependency "glog", glog_version
    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/jsinspector"
    ss.dependency "react-ios/cxxreact"
    ss.dependency "react-ios/callinvoker"
    ss.dependency "react-ios/jsiexecutor"
    ss.dependency "react-ios/FBLazyVector"
    ss.dependency "react-ios/RCTRequired"
  end

  s.subspec "RCTAnimation" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/NativeAnimation/{Drivers/*,Nodes/*,*}.{h,m,mm}"

    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/Default"
  end

  s.subspec "RCTNetwork" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/Network/*.{h,m,mm}"

    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/Default"
  end

  s.subspec "RCTBlob" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/Blob/**/*.{h,m,mm}"
    ss.private_header_files =
    "Libraries/Blob/RCTBlobCollector.h",
    "Libraries/Blob/RCTBlobPlugins.h"

    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/Default"
    ss.dependency "react-ios/RCTNetwork"
  end

  s.subspec "RCTImage" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/Image/*.{h,m,mm}"

    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/Default"
    ss.dependency "react-ios/RCTNetwork"
  end

  s.subspec "RCTLinking" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/LinkingIOS/*.{h,m,mm}"

    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/Default"
  end

  s.subspec "RCTSettings" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/Settings/*.{h,m,mm}"

    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/Default"
  end

  s.subspec "RCTText" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/Text/**/*.{h,m,mm}"

    ss.dependency "react-ios/Default"
  end

  s.subspec "RCTVibration" do |ss|
    # ss.pod_target_xcconfig = { "USE_HEADERMAP" => "YES" }
    ss.source_files = "Libraries/Vibration/*.{h,m,mm}"

    ss.dependency "react-ios/folly"
    ss.dependency "react-ios/jsi"
    ss.dependency "react-ios/Default"
  end
end
