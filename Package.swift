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
            targets: ["Swallow_PrecompiledProduct"]
        ),
        .library(
            name: "SwallowMacrosClient",
            targets: ["SwallowMacrosClient_PrecompiledProduct"]
        ),
        .library(
            name: "ErrorX",
            targets: ["ErrorX_PrecompiledProduct"]
        ),
        .library(
            name: "MacroBuilder",
            targets: ["MacroBuilder_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntaxUtilities",
            targets: ["SwiftSyntaxUtilities_PrecompiledProduct"]
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
            url: "https://github.com/swift-precompiled/swift-syntax",
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/_SwiftRuntimeExports-22b0bb6cb35164935621b9e83583fa5aa6852cd56985ad16abeab996620363d8.xcframework.zip",
            checksum: "22b0bb6cb35164935621b9e83583fa5aa6852cd56985ad16abeab996620363d8"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/_PythonString-f27f952d653418e7605156ccb976282fe595f15f62793d873305481359327915.xcframework.zip",
            checksum: "f27f952d653418e7605156ccb976282fe595f15f62793d873305481359327915"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/_SwallowSwiftOverlay-1b13a3ece4c487f070ff1bf499c58f3fc7412a18c49f7bf92a43cf917837e1d3.xcframework.zip",
            checksum: "1b13a3ece4c487f070ff1bf499c58f3fc7412a18c49f7bf92a43cf917837e1d3"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/LoremIpsum-80575dfa16b5f08751613d52b983def4ed8ca7f30b42f412522a33f05d54240e.xcframework.zip",
            checksum: "80575dfa16b5f08751613d52b983def4ed8ca7f30b42f412522a33f05d54240e"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/SE0270_RangeSet-2e41b551d27f9813493004459959adb7107c0c2da9bdbf27af7b167bd9ee2852.xcframework.zip",
            checksum: "2e41b551d27f9813493004459959adb7107c0c2da9bdbf27af7b167bd9ee2852"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/Swallow-7ec68a7d127d302d909aa919ba179a6b00d16fb398663ee1a309cdbde7bb6826.xcframework.zip",
            checksum: "7ec68a7d127d302d909aa919ba179a6b00d16fb398663ee1a309cdbde7bb6826"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/Compute-426a0f647ebe91c152304cac0d46240b7caa67dc047028d1677bdc55f373a14b.xcframework.zip",
            checksum: "426a0f647ebe91c152304cac0d46240b7caa67dc047028d1677bdc55f373a14b"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/CoreModel-d7ac01d46ce1f25e00dcd9afd04b1cb414c1f8266b9ff88b5e79eba7c1de77d1.xcframework.zip",
            checksum: "d7ac01d46ce1f25e00dcd9afd04b1cb414c1f8266b9ff88b5e79eba7c1de77d1"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/ErrorX-d54c82b4e80b73f395ff478f8280fe7a2e64d63da715859a32c92c727ffde098.xcframework.zip",
            checksum: "d54c82b4e80b73f395ff478f8280fe7a2e64d63da715859a32c92c727ffde098"
        ),
        .macro(
            name: "ErrorXMacros",
            path: "Macros/ErrorXMacros"
        ),
        .target(
            name: "Diagnostics_Aggregation",
            dependencies: ["Diagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Diagnostics",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/Diagnostics-5ccd809bc6f64fdabdc896f08105ab926d5c23dea7c738dd968107aa8658df74.xcframework.zip",
            checksum: "5ccd809bc6f64fdabdc896f08105ab926d5c23dea7c738dd968107aa8658df74"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/FoundationX-c5ceb2237eda88fcb9687da026593e600fb5de5231c1de64187b423bb704f8e0.xcframework.zip",
            checksum: "c5ceb2237eda88fcb9687da026593e600fb5de5231c1de64187b423bb704f8e0"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/POSIX-a665c92bf0e579208ec5a5ace3bf7b87f02e462b9f05ab65df43652d510a3848.xcframework.zip",
            checksum: "a665c92bf0e579208ec5a5ace3bf7b87f02e462b9f05ab65df43652d510a3848"
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/_RuntimeC-4e34d63ed9969595c2407a1320786a897309a998df09c694a0ab7915628e5368.xcframework.zip",
            checksum: "4e34d63ed9969595c2407a1320786a897309a998df09c694a0ab7915628e5368"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/_RuntimeKeyPath-dad583ed9ccdbb254543ff1e9bf41857363a1c439a36c3a52e54ab5e4d9af5ab.xcframework.zip",
            checksum: "dad583ed9ccdbb254543ff1e9bf41857363a1c439a36c3a52e54ab5e4d9af5ab"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/Runtime-f0932427c1b0a880dc7bf8db7cef88ec00af1a8c94caa78b2eeca006d2769660.xcframework.zip",
            checksum: "f0932427c1b0a880dc7bf8db7cef88ec00af1a8c94caa78b2eeca006d2769660"
        ),
        .macro(
            name: "SwallowMacros",
            path: "Macros/SwallowMacros"
        ),
        .target(
            name: "SwallowMacrosClient_Aggregation",
            dependencies: ["SwallowMacrosClient"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwallowMacrosClient",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/SwallowMacrosClient-08745ca5d0ec96f4a87aaa9698744c3aa764c2397ebfff5b9f16c377d3d8acba.xcframework.zip",
            checksum: "08745ca5d0ec96f4a87aaa9698744c3aa764c2397ebfff5b9f16c377d3d8acba"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: ["MacroBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/MacroBuilder-f8f41e142d03976798e0b38308a3741c0343fd8fe0dea179ef4325e90132cc5d.xcframework.zip",
            checksum: "f8f41e142d03976798e0b38308a3741c0343fd8fe0dea179ef4325e90132cc5d"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: ["SwiftSyntaxUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2ee4c0198458c04e9cbda1f66ec65a425bbbf30c/SwiftSyntaxUtilities-a1d66826355d3a81a1d213e6b72dfe95e1e74ce5d5a2b9983ffecf6aa8d99663.xcframework.zip",
            checksum: "a1d66826355d3a81a1d213e6b72dfe95e1e74ce5d5a2b9983ffecf6aa8d99663"
        ),
        .target(
            name: "Swallow_PrecompiledProduct",
            dependencies: [
                "_PythonString_Aggregation",
                "_RuntimeC",
                "_RuntimeKeyPath_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation",
                "SE0270_RangeSet_Aggregation",
                "Compute_Aggregation",
                "Diagnostics_Aggregation",
                "ErrorX_Aggregation",
                "ErrorXMacros",
                "SwallowMacrosClient_Aggregation",
                "SwallowMacros",
                "CoreModel_Aggregation",
                "FoundationX_Aggregation",
                "LoremIpsum_Aggregation",
                "POSIX_Aggregation",
                "Runtime_Aggregation",
                .product(
                    name: "Atomics",
                    package: "swift-atomics"
                )
            ]
        ),
        .target(
            name: "SwallowMacrosClient_PrecompiledProduct",
            dependencies: [
                "SwallowMacrosClient_Aggregation",
                "SwallowMacros",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_RuntimeC",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation"
            ]
        ),
        .target(
            name: "ErrorX_PrecompiledProduct",
            dependencies: [
                "ErrorX_Aggregation",
                "ErrorXMacros",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_RuntimeC",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation"
            ]
        ),
        .target(
            name: "MacroBuilder_PrecompiledProduct",
            dependencies: [
                "MacroBuilder_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_RuntimeC",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation",
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
                "SwiftSyntaxUtilities_Aggregation",
                .product(
                    name: "SwiftParser",
                    package: "swift-syntax"
                )
            ]
        ),
        .target(
            name: "SwiftSyntaxUtilities_PrecompiledProduct",
            dependencies: [
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
                    name: "SwiftParser",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                ),
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_RuntimeC",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation"
            ]
        )
    ]
)