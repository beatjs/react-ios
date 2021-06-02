// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "React",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "DoubleConversion", targets: ["DoubleConversion"]),
    .library(name: "glog", targets: ["glog"]),
    .library(name: "yoga", targets: ["Yoga"]),
    .library(name: "react-ios", targets: ["react-ios"])
  ],
  dependencies: [
    
  ],
  targets: [
    .target(name: "DoubleConversion"),
    .target(name: "glog"),
    .target(name: "yoga")
    .target(name: "react-ios", dependencies: ["DoubleConversion", "glog", "yoga"])
  ]
)
