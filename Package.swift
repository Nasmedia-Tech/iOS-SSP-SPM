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
            url: "https://github.com/Nasmedia-Tech/iOS-AdMixerDownload/raw/main/AdMixer1.0.8.xcframework.zip",
            checksum: "2813e54c09cbb51733d426dd52f2157be1a473808196b5b12dc4190907a38cfb"
        )
    ]
)
