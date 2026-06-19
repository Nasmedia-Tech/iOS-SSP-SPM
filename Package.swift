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
            url: "https://github.com/Nasmedia-Tech/iOS-AdMixerDownload/raw/main/AdMixer1.2.0.xcframework.zip",
            checksum: "d7d94c058ca5a94974e90794308b06a871858469b5af912148da517c2e30a59d"
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
