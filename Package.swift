// swift-tools-version: 5.7

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 10/06/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

/// Test package which uses the Infomatic plugin to build some plists.
import PackageDescription

let package = Package(
    name: "InfomaticTest",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(
            name: "InfomaticTest",
            targets: ["InfomaticTest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/InfomaticPlugin.git", branch: "main"),
//        .package(path: "../InfomaticPlugin")
    ],
    targets: [
        .executableTarget(
            name: "InfomaticTest",
            dependencies: [],
            resources: [
            ],
            plugins: [
                .plugin(name: "InfomaticPlugin", package: "InfomaticPlugin")
            ]
        )
    ]
)
