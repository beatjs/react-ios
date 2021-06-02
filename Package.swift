// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "React",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "React", targets: ["react-ios"]),
    .library(name: "DoubleConversion", targets: ["DoubleConversion"]),
    .library(name: "glog", targets: ["glog"]),
    .library(name: "yoga", targets: ["Yoga"])
  ],
  targets: [
    .target(name: "DoubleConversion", path: "Example/"),
    .target(name: "glog", path: "Example/"),
    .target(name: "Yoga", path: "Example/"),
    .target(name: "React", dependencies: ["DoubleConversion", "glog", "Yoga"], path: "Example/")
  ]
)