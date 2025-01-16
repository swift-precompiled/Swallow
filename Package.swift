// swift-tools-version:5.10

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "Swallow",
    platforms: [
        .iOS("13.0"),
        .macOS("11.0"),
        .tvOS("13.0"),
        .watchOS("6.0")
    ],
    products: [
        .library(
            name: "Swallow",
            targets: [
                "_PythonString_Aggregation",
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "_SwallowSwiftOverlay_Aggregation",
                "SE0270_RangeSet_Aggregation",
                "Swallow_Aggregation",
                "Compute_Aggregation",
                "CoreModel_Aggregation",
                "Diagnostics_Aggregation",
                "FoundationX_Aggregation",
                "LoremIpsum_Aggregation",
                "POSIX_Aggregation",
                "Runtime_Aggregation"
            ]
        ),
        .library(
            name: "SwallowMacrosClient",
            targets: ["SwallowMacrosClient_Aggregation"]
        ),
        .library(
            name: "MacroBuilder",
            targets: ["MacroBuilder_Aggregation"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            "1.1.0"..<"2.0.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax",
            "600.0.1"..<"601.0.0"
        )
    ],
    targets: [
        .target(
            name: "_PythonString_Aggregation",
            dependencies: [.target(name: "_PythonString")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845023.zip",
            checksum: "3e12b92a1057141f044a4bdb1741e84dd83e076975386712955b5979d914b7d3"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: [.target(name: "_RuntimeC")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845026.zip",
            checksum: "59f8decd6b02387277812508593bf0076a8c03e514ffc15edb6ff4b538f0b2be"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: [.target(name: "_RuntimeKeyPath"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845029.zip",
            checksum: "3d865458d10cb40eac9d590a0325f0f09fb88017ac30144327840ba1cdf7aa11"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: [
                .target(name: "_SwallowSwiftOverlay"),
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                )
            ]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845033.zip",
            checksum: "789abc8c2fb470b07cf59c8b0ef907b8e7dba79c4a9b12b68585fb031be26eb4"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: [.target(name: "SE0270_RangeSet")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845037.zip",
            checksum: "49d0741a6fc79240148a8e66729ad5e157fe55888522d80e9b6a19c4a209a29c"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: [
                .target(name: "Swallow"),
                "_RuntimeC_Aggregation",
                "_SwallowSwiftOverlay_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                )
            ]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845044.zip",
            checksum: "55c281e964a70f3a433e972bfeb66a54e3d0d3416d11325f8ef17866ab36dd9c"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: [
                .target(name: "Compute"),
                "Diagnostics_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                )
            ]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845048.zip",
            checksum: "faa7b02b287288af84a0e346edcde83afa0c8e5502bd958c0823cb9175465018"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: [
                .target(name: "CoreModel"),
                "Diagnostics_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                )
            ]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845051.zip",
            checksum: "bada98eaaece561a367ff3c9231e88cd5344b240e37d94f6cd04ec86087c451b"
        ),
        .target(
            name: "Diagnostics_Aggregation",
            dependencies: [
                .target(name: "Diagnostics"),
                "Swallow_Aggregation",
                "SwallowMacrosClient_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Diagnostics",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845052.zip",
            checksum: "4a05556d321e487246ae048464f8c37c9b54a0b192e1479bed9a82291c160062"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: [
                .target(name: "FoundationX"),
                "Diagnostics_Aggregation",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845054.zip",
            checksum: "ef5418153006f13e7b9e27f639b76ff74391b956b8478913d172e1de9b5462a5"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: [.target(name: "LoremIpsum")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845056.zip",
            checksum: "c9a76180e9636ec01aaf11771f4192985ad9e968dfb768fe2702abea473031e9"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: [.target(name: "POSIX"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845058.zip",
            checksum: "f3dc94aec0e81f507a14cadfce667060dfe4866ca03ebfa8469df85646a7f6ea"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: [
                .target(name: "Runtime"),
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "Compute_Aggregation",
                "FoundationX_Aggregation",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845061.zip",
            checksum: "b5cb7e0ccdcc2d04eb8cb5962d8f56f10df4b2e5eecd59a67bb8b5d542b3359f"
        ),
        .target(
            name: "SwallowMacrosClient_Aggregation",
            dependencies: [
                .target(name: "SwallowMacrosClient"),
                "SwallowMacros",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwallowMacrosClient",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845064.zip",
            checksum: "05f54b7831554e50a45415b170fab3d83999fb6044f3b2d378d37514c6177920"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: [
                .target(name: "MacroBuilder"),
                "Swallow_Aggregation",
                "SwiftSyntaxUtilities_Aggregation",
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntax",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxBuilder",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                )
            ]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845065.zip",
            checksum: "a85debc63adcb355237f0579daa01d2250291664353d5cbcf30e425170717611"
        ),
        .macro(
            name: "SwallowMacros",
            dependencies: [
                "SwiftSyntaxUtilities_Aggregation",
                .product(
                    name: "SwiftSyntax",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                )
            ],
            path: "Macros/SwallowMacros"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxUtilities"),
                "Swallow_Aggregation",
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntax",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxBuilder",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                )
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220845067.zip",
            checksum: "e1c7a2f8b363636fdc82c3ab7700fb350f048632846c4c2c1197ae873707a674"
        )
    ]
)