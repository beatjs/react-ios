// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "React",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "DoubleConversion", targets: ["DoubleConversion"]),
    .library(name: "glog", targets: ["glog"]),
    .library(name: "Yoga", targets: ["Yoga"]),
    .library(name: "react-ios", targets: ["react-ios"])
  ],
  dependencies: [
    
  ],
  targets: [
    .target(name: "DoubleConversion", path: "Example/Pods/DoubleConversion"),
    .target(name: "glog", path: "Example/Pods/glog"),
    .target(name: "yoga", path: "Example/Pods/Yoga"),
    .target(name: "react-ios", dependencies: ["DoubleConversion", "glog", "yoga"])
  ]
)
