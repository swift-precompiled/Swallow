// swift-tools-version:6.1.0

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
                "_SwiftRuntimeExports_Aggregation",
                "SE0270_RangeSet_Aggregation",
                "Swallow_Aggregation",
                "Compute_Aggregation",
                "CoreModel_Aggregation",
                "Diagnostics_Aggregation",
                "ErrorX_Aggregation",
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
            name: "ErrorX",
            targets: ["ErrorX_Aggregation"]
        ),
        .library(
            name: "MacroBuilder",
            targets: ["MacroBuilder_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxUtilities",
            targets: ["SwiftSyntaxUtilities_Aggregation"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/swift-atomics",
            exact: "1.3.1"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            exact: "1.6.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax.git",
            exact: "603.0.2"
        )
    ],
    targets: [
        .target(
            name: "_SwiftRuntimeExports_Aggregation",
            dependencies: ["_SwiftRuntimeExports"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwiftRuntimeExports-376b166c99849b370fa113d5e4713f17dd58138a2500717fd2fa19c61eb7383f.xcframework.zip",
            checksum: "376b166c99849b370fa113d5e4713f17dd58138a2500717fd2fa19c61eb7383f"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_PythonString-ede457771bb0006d5d291c878c3fce06779312466e6c5705b94c615aceca8e1a.xcframework.zip",
            checksum: "ede457771bb0006d5d291c878c3fce06779312466e6c5705b94c615aceca8e1a"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: [
                "_SwallowSwiftOverlay",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                )
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwallowSwiftOverlay-8c7678e7a0aa01179a63d2e01c3d30826dca3d05980db5b8036a534cc5c3b2f1.xcframework.zip",
            checksum: "8c7678e7a0aa01179a63d2e01c3d30826dca3d05980db5b8036a534cc5c3b2f1"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/LoremIpsum-cd5e97cf6f73f0b60d689b5d37a8f83439daeda568c7b3644f95a55225437e19.xcframework.zip",
            checksum: "cd5e97cf6f73f0b60d689b5d37a8f83439daeda568c7b3644f95a55225437e19"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SE0270_RangeSet-bfe0aa4421a7c84fb9d92143bcab79e6c5c6cf0edceda03720af4f79990f55ae.xcframework.zip",
            checksum: "bfe0aa4421a7c84fb9d92143bcab79e6c5c6cf0edceda03720af4f79990f55ae"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: [
                "Swallow",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_RuntimeC_Aggregation",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Swallow-be4c0381c59e747cead52cabc27106a036893ef532f9d93a52722f1d8405ea9e.xcframework.zip",
            checksum: "be4c0381c59e747cead52cabc27106a036893ef532f9d93a52722f1d8405ea9e"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: [
                "Compute",
                "Diagnostics_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Compute-2fdb4ed2218e624c919e69833853049c87d5338df2877f5c663f22093856f919.xcframework.zip",
            checksum: "2fdb4ed2218e624c919e69833853049c87d5338df2877f5c663f22093856f919"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: [
                "CoreModel",
                "Diagnostics_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/CoreModel-bed5da7f207fe0da5d574f2b7b66db2746dd907ca36f959f02437fc5e085bac2.xcframework.zip",
            checksum: "bed5da7f207fe0da5d574f2b7b66db2746dd907ca36f959f02437fc5e085bac2"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: [
                "ErrorX",
                "ErrorXMacros",
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/ErrorX-fc0ce8096888506a927eb4f8c38fbb59dacf470b4130110ea900dbaf9822160c.xcframework.zip",
            checksum: "fc0ce8096888506a927eb4f8c38fbb59dacf470b4130110ea900dbaf9822160c"
        ),
        .macro(
            name: "ErrorXMacros",
            path: "Macros/ErrorXMacros"
        ),
        .target(
            name: "Diagnostics_Aggregation",
            dependencies: [
                "Diagnostics",
                "ErrorX_Aggregation",
                "Swallow_Aggregation",
                "SwallowMacrosClient_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Diagnostics",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Diagnostics-f450ac2516a45ddecc29ee502a1036f2e863b0bb7517c8f2b1aea0d9dc833601.xcframework.zip",
            checksum: "f450ac2516a45ddecc29ee502a1036f2e863b0bb7517c8f2b1aea0d9dc833601"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: [
                "FoundationX",
                "Diagnostics_Aggregation",
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/FoundationX-645495320b0321f1131269a6b137141cfa730ec984498465c57a4a098ab6f618.xcframework.zip",
            checksum: "645495320b0321f1131269a6b137141cfa730ec984498465c57a4a098ab6f618"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: [
                "POSIX",
                "Swallow_Aggregation",
                "SwallowMacrosClient_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/POSIX-e2e92530e430e6d9d2bae8e36e7c7e9f4b72d0881de475d3717b942011af5185.xcframework.zip",
            checksum: "e2e92530e430e6d9d2bae8e36e7c7e9f4b72d0881de475d3717b942011af5185"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeC-5909f2e3569d7101eb83d17ab021bf3466d5faea19f76c394e67a96c943b6b69.xcframework.zip",
            checksum: "5909f2e3569d7101eb83d17ab021bf3466d5faea19f76c394e67a96c943b6b69"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeKeyPath-390d864b85bf467601e6f008a9aec9c3bbc6c728bb5ac0a6a4ccc462bdbda64f.xcframework.zip",
            checksum: "390d864b85bf467601e6f008a9aec9c3bbc6c728bb5ac0a6a4ccc462bdbda64f"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: [
                "Runtime",
                .product(
                    name: "Atomics",
                    package: "swift-atomics"
                ),
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "Compute_Aggregation",
                "FoundationX_Aggregation",
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Runtime-487aaa645387145da3ed3504fbe7d0b395bdf8f69717354b4c72bca0ee4d2531.xcframework.zip",
            checksum: "487aaa645387145da3ed3504fbe7d0b395bdf8f69717354b4c72bca0ee4d2531"
        ),
        .macro(
            name: "SwallowMacros",
            path: "Macros/SwallowMacros"
        ),
        .target(
            name: "SwallowMacrosClient_Aggregation",
            dependencies: [
                "SwallowMacrosClient",
                "SwallowMacros",
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwallowMacrosClient",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwallowMacrosClient-a6a8fff31bbd26a40e479c7e0a0661a0335356402c338b8e8116c706123bb9fe.xcframework.zip",
            checksum: "a6a8fff31bbd26a40e479c7e0a0661a0335356402c338b8e8116c706123bb9fe"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: [
                "MacroBuilder",
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
                ),
                "SwiftSyntaxUtilities_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/MacroBuilder-bcd04870a760c0c9a07b5630caf4564f67996ad408d40d9a0bbfd1e07b7375e5.xcframework.zip",
            checksum: "bcd04870a760c0c9a07b5630caf4564f67996ad408d40d9a0bbfd1e07b7375e5"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: [
                "SwiftSyntaxUtilities",
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
                    name: "SwiftParser",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                ),
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwiftSyntaxUtilities-8114c661fb6d944068720d47d95c33025d38f7b0258c638f607dacac5e84012c.xcframework.zip",
            checksum: "8114c661fb6d944068720d47d95c33025d38f7b0258c638f607dacac5e84012c"
        )
    ]
)