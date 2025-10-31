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
            url: "https://github.com/Nasmedia-Tech/iOS-AdMixerDownload/raw/main/AdMixer1.1.1-beta.xcframework.zip",
            checksum: "13fc3327610f2ffe854af6b3b96b632d1abe1ff5eb394b5591238024c4736ea5"
        )
    ]
)
