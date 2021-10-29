// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2021 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using Tealeaf NON-Debug version, if you need debug version use https://github.com/acoustic-analytics/TealeafDebug-SP")
let package = Package(
    name: "Tealeaf",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Tealeaf",
            targets: ["Tealeaf", "EOCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/acoustic-analytics/Tealeaf/releases/download/10.6.138/Tealeaf_XCFramework_Release.zip",
            checksum: "d85b7f04d5fae7ea71c5a9a16b3a229b19f1bbb895c81fc1dec28a814806ab03"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.72/EOCore_XCFramework_Release.zip",
            checksum: "f9e0e17504e09b1ea520bd82047944e5908abe25fe0d2a65c924973386542de5"),
    ]
)
