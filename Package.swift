// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "AnimatedGIFImageSerialization",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "AnimatedGIFImageSerialization",
            targets: ["AnimatedGIFImageSerialization"]
        )
    ],
    targets: [
        .target(
            name: "AnimatedGIFImageSerialization",
            path: "AnimatedGIFImageSerialization",
            publicHeadersPath: ".",
            cSettings: [
                // Ensure modules are enabled for @import directives
                .unsafeFlags(["-fmodules"]) 
            ],
            linkerSettings: [
                .linkedFramework("ImageIO"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)

 
