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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwiftRuntimeExports-7cd8c4291ce9b477170d50a938810f884aa85f1bdfdd090be578e2cff0bc8810.xcframework.zip",
            checksum: "7cd8c4291ce9b477170d50a938810f884aa85f1bdfdd090be578e2cff0bc8810"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_PythonString-9d6cdcd8c43b79a363e903238d4d67ca1cde92137d17e8656242f3770cc325e1.xcframework.zip",
            checksum: "9d6cdcd8c43b79a363e903238d4d67ca1cde92137d17e8656242f3770cc325e1"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwallowSwiftOverlay-8236686601c5bb23ce0e96db51c85729d31b63f8266abe54698cdbfe575895ac.xcframework.zip",
            checksum: "8236686601c5bb23ce0e96db51c85729d31b63f8266abe54698cdbfe575895ac"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/LoremIpsum-ec8563579cfdbf942618501be40f54457e7abb7972d051bccccfca6e453955de.xcframework.zip",
            checksum: "ec8563579cfdbf942618501be40f54457e7abb7972d051bccccfca6e453955de"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SE0270_RangeSet-3f2138f7f9c12352bdc44deb78a041dc4700df0a28c0b7e80aac95e24aee59d0.xcframework.zip",
            checksum: "3f2138f7f9c12352bdc44deb78a041dc4700df0a28c0b7e80aac95e24aee59d0"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Swallow-72ac2a390e5399d08954c08704fd712a773b82b93eb7edcaa84fb9f89b3a9a20.xcframework.zip",
            checksum: "72ac2a390e5399d08954c08704fd712a773b82b93eb7edcaa84fb9f89b3a9a20"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Compute-c6f99bb64681e04ce65da1bd709248b2723acfade6485870133198ce137ad0bb.xcframework.zip",
            checksum: "c6f99bb64681e04ce65da1bd709248b2723acfade6485870133198ce137ad0bb"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/CoreModel-04c9c8983b9ee4fe7e25f258691cb2b7d03c62f972755dbc64296bddf69c72d2.xcframework.zip",
            checksum: "04c9c8983b9ee4fe7e25f258691cb2b7d03c62f972755dbc64296bddf69c72d2"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/ErrorX-07b87cd1f87f6e3135f510b14ce2cdf082b855253288f0cc41528ab3a7e87bc1.xcframework.zip",
            checksum: "07b87cd1f87f6e3135f510b14ce2cdf082b855253288f0cc41528ab3a7e87bc1"
        ),
        .macro(
            name: "ErrorXMacros",
            dependencies: [
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
                ),
                "SwiftSyntaxUtilities_Aggregation"
            ],
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Diagnostics-8e64f49e67e6fefa9930336b1b7cea38bea8d32076d1a21d67f9c5001aff81a1.xcframework.zip",
            checksum: "8e64f49e67e6fefa9930336b1b7cea38bea8d32076d1a21d67f9c5001aff81a1"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/FoundationX-792406d0d62bc35388eb7674941024c9c3aa7c05490ba40371869685a8b5f0b1.xcframework.zip",
            checksum: "792406d0d62bc35388eb7674941024c9c3aa7c05490ba40371869685a8b5f0b1"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/POSIX-45a790897257116092661d45362a66503d5261ef6638df11a511bac0e49857d4.xcframework.zip",
            checksum: "45a790897257116092661d45362a66503d5261ef6638df11a511bac0e49857d4"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeC-3990eb49e2ef0936aad41091fc6a303827f10fbfc3680079205eb3adcad82595.xcframework.zip",
            checksum: "3990eb49e2ef0936aad41091fc6a303827f10fbfc3680079205eb3adcad82595"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeKeyPath-0bd9a04b90c41f8cfd119b239ae7e33fbcef8d5d97f647bedaa5bf8c4f43ed18.xcframework.zip",
            checksum: "0bd9a04b90c41f8cfd119b239ae7e33fbcef8d5d97f647bedaa5bf8c4f43ed18"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Runtime-9b6604d47c8233c08db659263967a1a1f325b9b5dc9b848263eec5ff0b160793.xcframework.zip",
            checksum: "9b6604d47c8233c08db659263967a1a1f325b9b5dc9b848263eec5ff0b160793"
        ),
        .macro(
            name: "SwallowMacros",
            dependencies: [
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
                ),
                "SwiftSyntaxUtilities_Aggregation"
            ],
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwallowMacrosClient-bedbdb20c77e0c61fd4234d2e600868095ee02fbb60f224932ec91bfc1a9ca05.xcframework.zip",
            checksum: "bedbdb20c77e0c61fd4234d2e600868095ee02fbb60f224932ec91bfc1a9ca05"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/MacroBuilder-bf88aeb895cc03cab59ceac8c71f4a4eb652186069d2b7d6a16e968bb4c5a037.xcframework.zip",
            checksum: "bf88aeb895cc03cab59ceac8c71f4a4eb652186069d2b7d6a16e968bb4c5a037"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwiftSyntaxUtilities-f97c31b8533e4f8f10d02b497db36b5ca4f0ed838eaa42653b13f2e0d38bfa15.xcframework.zip",
            checksum: "f97c31b8533e4f8f10d02b497db36b5ca4f0ed838eaa42653b13f2e0d38bfa15"
        ),
        .target(
            name: "Swallow_PrecompiledProduct",
            dependencies: [
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
        .target(
            name: "SwallowMacrosClient_PrecompiledProduct",
            dependencies: ["SwallowMacrosClient_Aggregation"]
        ),
        .target(
            name: "ErrorX_PrecompiledProduct",
            dependencies: ["ErrorX_Aggregation"]
        ),
        .target(
            name: "MacroBuilder_PrecompiledProduct",
            dependencies: ["MacroBuilder_Aggregation"]
        ),
        .target(
            name: "SwiftSyntaxUtilities_PrecompiledProduct",
            dependencies: ["SwiftSyntaxUtilities_Aggregation"]
        )
    ]
)