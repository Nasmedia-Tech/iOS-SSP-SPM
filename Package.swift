// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "AdMixer",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdMixer", targets: ["AdMixer"]),
    ],
    targets: [
        .binaryTarget(
            name: "AdMixer",
            url: "https://github.com/Nasmedia-Tech/iOS-SSP-SPM/raw/main/AdMixer1.0.7.xcframework.zip",
            checksum: "dfa7f3d5bec581d2333566277652b28ecf8dd6a3e50eb3810d3434d275b6ebb3"
        )
    ]
)
