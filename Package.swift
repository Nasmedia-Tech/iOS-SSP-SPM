// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AdMixer",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdMixer",
            targets: ["iOS_SSP_SPM"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AdMixerBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-SSP-SPM/releases/download/v1.6.0/AdMixer1.6.0.xcframework.zip",
            checksum: "f5f602294608516c45bf83ce9548ee4e07d3ebe4c22afe99eedd04a006245b56"
        ),
        .target(
            name: "iOS_SSP_SPM",
            dependencies: ["AdMixerBinary"],
            path: "Sources/iOS-SSP-SPM",
            linkerSettings: [
                .linkedFramework("WebKit")
            ]
        )
    ]
)
