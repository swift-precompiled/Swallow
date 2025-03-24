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
            url: "https://github.com/swift-precompiled/swift-atomics",
            "1.2.0"..<"2.0.0"
        ),
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/_PythonString.xcframework.zip",
            checksum: "520bc9ec437ce56c72aaaffd1bfac3c718dec11a67aee75a5433fa3533dd755f"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: [.target(name: "_RuntimeC")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/_RuntimeC.xcframework.zip",
            checksum: "7bdfeadb51f01f60e4b180a40df0310c2e10dba7508629556cc48d889612ae4c"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: [.target(name: "_RuntimeKeyPath"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/_RuntimeKeyPath.xcframework.zip",
            checksum: "c355a6c54d254477e94a5cafaf7baeb0ae52026ff533463846421f11efd5b6a9"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/_SwallowSwiftOverlay.xcframework.zip",
            checksum: "b5c06f039d9aad990aad71d3d09655625f601fb5591aa674980d671bfbb427b4"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: [.target(name: "SE0270_RangeSet")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/SE0270_RangeSet.xcframework.zip",
            checksum: "d84caa6b45b2fff05245d26386a29298e93fd6dddf46748e445f39d0cf5dd8bd"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/Swallow.xcframework.zip",
            checksum: "ecf9caf5abca5fe86514e52d895af9bc56c409558704cd86d42a8e22e9ea348a"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/Compute.xcframework.zip",
            checksum: "4abf3bfbb539b25aaeaa90d47bb5f6282ba6ad80e3bef7529d95d65a8863a87f"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/CoreModel.xcframework.zip",
            checksum: "cda6f9be0f416887fd389386372b4d2505b098fdf3092684af6c6aef9ae19623"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/Diagnostics.xcframework.zip",
            checksum: "c10a075091d0b532281d2485e7e58eb24880ed8c522862785222317513dabeef"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/FoundationX.xcframework.zip",
            checksum: "a078d98bf11c352f2d3bf21848acf6bf051e03163404bd7f44751620388993bd"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: [.target(name: "LoremIpsum")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/LoremIpsum.xcframework.zip",
            checksum: "c93ab0e0d573c82b44e18da74607bd1e922f2b4c20a699a1a66b8293d8b4682f"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: [.target(name: "POSIX"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/POSIX.xcframework.zip",
            checksum: "1e406efb9264b6fd58e8baf678859e331f8e9444371907d1d077be8cd4a54753"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: [
                .target(name: "Runtime"),
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "Compute_Aggregation",
                "FoundationX_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Atomics",
                    package: "swift-atomics"
                )
            ]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/Runtime.xcframework.zip",
            checksum: "80078b93ea6434e66abb5103c8a44393ef8259fb623c3086573dd71f6c046647"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/SwallowMacrosClient.xcframework.zip",
            checksum: "66bb000d97d839e4e4465708ee5324aad25c54360b30b86a72ba9a7bafa9c7e0"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/MacroBuilder.xcframework.zip",
            checksum: "885502ffd17d72310e185a5448567a78ef0f8e06f483dab0dcd4ec493c65f2f6"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/vmanot-Swallow-Release-898312f/SwiftSyntaxUtilities.xcframework.zip",
            checksum: "5db562287eecb64eb908c9f8da578ff93fdad575f55fb1736173ed1fc4cc3769"
        )
    ]
)