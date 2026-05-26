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
            url: "https://github.com/Nasmedia-Tech/iOS-AdMixerDownload/raw/main/AdMixer1.1.7.xcframework.zip",
            checksum: "38f4e9911f4bf2071b07e66f4a343ed77f3fb8a08dc7c0e5adf881c90862c2f0"
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
