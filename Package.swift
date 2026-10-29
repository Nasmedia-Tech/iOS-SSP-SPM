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
            url: "https://github.com/Nasmedia-Tech/iOS-SSP-SPM/releases/download/v1.5.0/AdMixer1.5.0.xcframework.zip",
            checksum: "44c603f185c5b3a751193758bb2882051b8fa51548540d79a5f3ab0836fbf42a"
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
