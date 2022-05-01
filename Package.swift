// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaterialDesignUIComponents",
    platforms: [
        .iOS(.v14),
        .watchOS(.v7),
    ],
    products: [
        .library(
            name: "MaterialDesignUIComponents",
            targets: ["MaterialDesignUIComponents"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MaterialDesignUIComponents",
            dependencies: []),
        .testTarget(
            name: "MaterialDesignUIComponentsTests",
            dependencies: ["MaterialDesignUIComponents"]),
    ]
)
