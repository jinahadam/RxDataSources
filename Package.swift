// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "RxDataSources",
  platforms: [
    .iOS(.v9), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxDataSources", type: .dynamic, targets: ["RxDataSources"]),
    .library(name: "Differentiator", type: .dynamic, targets: ["Differentiator"])
  ],
  dependencies: [
    .package(url: "https://github.com/jinahadam/RxSwift.git", .upToNextMajor(from: "6.0.0"))
  ],
  targets: [
    .target(name: "RxDataSources", dependencies: ["Differentiator", "RxSwift", "RxCocoa"]),
    .target(name: "Differentiator"),
    .testTarget(name: "RxDataSourcesTests", dependencies: ["RxDataSources"])
  ],
  swiftLanguageVersions: [.v5]
)
