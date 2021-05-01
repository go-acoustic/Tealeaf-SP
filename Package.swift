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
#if DEBUG
    let package = Package(
        name: "Tealeaf",
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
                url: "https://github.com/acoustic-analytics/IBMTealeaf/releases/download/10.6.73/Tealeaf_XCFrameworks_Debug.zip",
                checksum: "34a1b645136ace463f0dc4a4293477187dc8511e3b309a0fd6fdd8121575981b"),
            .binaryTarget(
                name: "EOCore",
                url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.33/EOCore_XCFrameworks_Debug.zip",
                checksum: "4b0a2a39c73cd8512b3e6e876609f9fb50e1a718c9f9e42503d2713e81a794b8"),
        ]
    )
#else
    let package = Package(
        name: "Tealeaf",
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
                url: "https://github.com/acoustic-analytics/IBMTealeaf/releases/download/10.6.73/Tealeaf_XCFrameworks_Release.zip",
                checksum: "c1a5f938f5e76416fab63485a0f48d18adad972c53c1f25a0596b197e5b5386e"),
            .binaryTarget(
                name: "EOCore",
                url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.33/EOCore_XCFrameworks_Release.zip",
                checksum: "4afc44c861331b3aafc9b5f22f90210528190fd85e7f3403962583e72e26ee13"),
        ]
    )
#endif
