// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "AnimatedGIFImageSerialization",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "AnimatedGIFImageSerialization", targets: ["AnimatedGIFImageSerialization"])
    ],
    targets: [
        // During local development we will swap this to a binary target pointing to build-xc
        .target(
            name: "AnimatedGIFImageSerialization",
            path: "AnimatedGIFImageSerialization",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("ImageIO"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)

 
