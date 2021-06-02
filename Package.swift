// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "React",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "ReactNativeCore", targets: ["DoubleConversion"]),
    .library(name: "ReactNativeCore", targets: ["glog"]),
    .library(name: "ReactNativeCore", targets: ["Yoga"]),
    .library(name: "ReactNativeCore", targets: ["react-ios"])
  ],
  targets: [
    .target(name: "DoubleConversion", path: "Example/"),
    .target(name: "glog", path: "Example/"),
    .target(name: "Yoga", path: "Example/"),
    .target(name: "react-ios", dependencies: ["DoubleConversion", "glog", "Yoga"], path: "Example/")
  ]
)